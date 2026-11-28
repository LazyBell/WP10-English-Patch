static int recconv(u8*p); static u32 nrec;
#ifndef NOIDTRUST
#define NOIDTRUST 0
#endif
/* Old-save names -> English (add-on v5j).
   Saves made before the patch keep Japanese names: the save holds its own copy of people, owners and farms.
   A background scan finds those records in memory and writes the same English a new game shows:
     people  [surname 17][given 17][reading 9][reading 9]                (jockeys, trainers, breeders...)
     owners  ff ff [rep surname 17][rep given 17][reading 9+9][club 14]   (owners, clubs)
     farms   [name 13][reading 16]                                       (stud / owner farms)
   English comes from WP10_EN_names.bin (people list, surname/given readings, katakana word list, farm names);
   anything else is romanised from the stored kana reading. Every write is guarded (exact list match or strict
   shape checks). Saving afterwards keeps the English. Delete WP10_EN_names.bin to turn this off. */
#include "rtab.inc"
#ifndef NLOG
#define NLOG(kind,p,before,L)
#endif
#pragma pack(push,1)
typedef struct { u32 h; u8 k[34]; u8 e[34]; } NREC;   /* people: JP surname+given -> English fields */
typedef struct { u32 h; u8 k[18]; u8 r[14]; } KREC;   /* kanji surname(kind 1)/given(kind 2) -> kana codes */
typedef struct { u32 h; u8 k[12]; u8 e[20]; } DREC;   /* kana-code word -> English word */
typedef struct { u32 h; u8 k[13]; u8 e[12]; } FREC;   /* farm name (SJIS) -> English */
typedef struct { u32 h; u8 k[16]; u8 e[16]; } CREC;   /* club name (SJIS) -> English, from the patched data */
typedef struct { u32 h; u8 k[20]; u8 e[32]; } HREC;   /* real horse kana codes -> the game's English name */
typedef struct { u32 h; u8 k[16]; u8 e[16]; } LREC;   /* sire-line table name: kana codes -> English codes (lines patch) */
#pragma pack(pop)
static NREC*ntab; static u32 nn; static KREC*ktab; static u32 kn; static DREC*dtab; static u32 dn; static FREC*ftab; static u32 fn_; static CREC*ctab_; static u32 cn_; static HREC*htab; static u32 hn_; static LREC*ltab; static u32 ln_; static u32 nlt; static u32 nhist,ncust; static DREC*xtab; static u32 xn_;
static u8*nblob; static u64 nblen;
static u32 nhit,nrom,nown,nclub,nfarm,npass,nfold; static int nphase;
static u32 fnvn(const u8*k,int n){ u32 h=2166136261u; for(int i=0;i<n;i++){ h^=k[i]; h*=16777619u; } return h; }
#define BFIND(T,tab,cnt,KEY,KL) { u32 h_=fnvn(KEY,KL); u32 lo=0,hi=cnt; while(lo<hi){ u32 m_=(lo+hi)/2; if(tab[m_].h<h_) lo=m_+1; else hi=m_; } \
  for(;lo<cnt&&tab[lo].h==h_;lo++) if(eq(tab[lo].k,KEY,KL)) return &tab[lo]; return 0; }
static NREC* nfind(const u8*k) BFIND(NREC,ntab,nn,k,34)
static KREC* kfind(const u8*k) BFIND(KREC,ktab,kn,k,18)
static DREC* dfind(const u8*k) BFIND(DREC,dtab,dn,k,12)
static DREC* xfind(const u8*k) BFIND(DREC,xtab,xn_,k,12)
static FREC* ffind(const u8*k) BFIND(FREC,ftab,fn_,k,13)
static CREC* cfind(const u8*k) BFIND(CREC,ctab_,cn_,k,16)
static HREC* hfind(const u8*k) BFIND(HREC,htab,hn_,k,20)
static LREC* lfind(const u8*k) BFIND(LREC,ltab,ln_,k,16)
static int islead(u8 c){ return (c>=0x81&&c<=0x9f)||(c>=0xe0&&c<=0xfc); }
/* field of L bytes: double-byte Shift-JIS only, then NUL padding. returns length, 0 if empty, -1 if not a name */
static int sjf(const u8*f,int L){
  int n=0; while(n<L-1&&f[n]){ if(!islead(f[n])) return -1; u8 t=f[n+1]; if(t<0x40||t==0x7f||t>0xfc) return -1; n+=2; }
  if(n>L-1) return -1; for(int i=n;i<L;i++) if(f[i]) return -1; return n; }
static int sjfield(const u8*f){ return sjf(f,17); }
static int sjt(const u8*f,int L){ int n=0; while(n<L-1&&f[n]){ if(!islead(f[n])) return -1; u8 t=f[n+1]; if(t<0x40||t==0x7f||t>0xfc) return -1; n+=2; }
  if(n>L-1||f[n]) return -1; return n; }
static int mixt(const u8*f,int L){ int n=0,dbl=0; while(n<L-1&&f[n]){ if(islead(f[n])){ u8 t=f[n+1]; if(t<0x40||t==0x7f||t>0xfc) return -1; n+=2; dbl++; }
    else if((f[n]>='A'&&f[n]<='Z')||(f[n]>='0'&&f[n]<='9')) n++; else return -1; } if(n>L-1||f[n]||!dbl) return -1; return n; }
static u8*nrb;
static int mixf(const u8*f,int L){ int n=0,dbl=0; while(n<L-1&&f[n]){ if(islead(f[n])){ u8 t=f[n+1]; if(t<0x40||t==0x7f||t>0xfc) return -1; n+=2; dbl++; }
    else if((f[n]>='A'&&f[n]<='Z')||(f[n]>='a'&&f[n]<='z')||(f[n]>='0'&&f[n]<='9')) n++; else return -1; } if(n>L-1||f[n]||!dbl) return -1; return n; }
static void clean(u8*d,const u8*f,int n,int L){ for(int i=0;i<L;i++) d[i]=(i<n)?f[i]:0; }
static int clubf(const u8*f){ int n=0,dbl=0;   /* club name: SJIS and A-Z/0-9 mixed, NUL within 14 (the game leaves old bytes after it) */
  while(n<13&&f[n]){ if(islead(f[n])){ u8 t=f[n+1]; if(t<0x40||t==0x7f||t>0xfc) return -1; n+=2; dbl++; }
    else if((f[n]>='A'&&f[n]<='Z')||(f[n]>='0'&&f[n]<='9')) n++; else return -1; }
  if(n>13||!dbl||f[n]) return -1; return n; }
static int rdf(const u8*f,int L){
  int n=0; while(n<L&&f[n]){ if(!((f[n]>=1&&f[n]<=0x56)||f[n]==0xfe)) return -1; n++; }
  for(int i=n;i<L;i++) if(f[i]) return -1; return n; }
static int rdfield(const u8*f){ return rdf(f,9); }
/* kana codes -> romaji (same rules as tools/romaji.py) */
static int romaji(const u8*r,int n,char*o){
  int k=0;
  for(int i=0;i<n;i++){ u8 c=r[i]; u8 nx=(i+1<n)?r[i+1]:0;
    if(c==0xfe) continue;
    if(c==0x23){ if(nx&&nx<0x57&&RB[nx][0]){ char f=RB[nx][0]; o[k++]=(f=='c')?'t':f; } continue; }
    if(c>=0x57) return -1;
    const char*b=RB[c]; int bl=slen(b);
    if((nx==0x43||nx==0x45||nx==0x47)&&bl){ const char*y=(nx==0x43)?"ya":(nx==0x45)?"yu":"yo";
      int sh=(bl>=2&&(eq((const u8*)b,(const u8*)"shi",3)||eq((const u8*)b,(const u8*)"chi",3)||(b[0]=='j'&&b[1]=='i')));
      for(int j=0;j<bl-1;j++) o[k++]=b[j]; if(sh){ o[k++]=y[1]; } else { o[k++]=y[0]; o[k++]=y[1]; } i++; continue; }
    if((nx==1||nx==3||nx==5||nx==7||nx==9)&&bl){ char v=RB[nx][0];
      if(c==0x35){ o[k++]='f'; o[k++]=v; }
      else if(c==0x54){ o[k++]='v'; o[k++]=v; }
      else if((c==0x26||c==0x27)&&nx==3){ o[k++]=b[0]; o[k++]='i'; }
      else if((c==0x28||c==0x29)&&nx==5){ o[k++]=b[0]; o[k++]='u'; }
      else if(c==6){ o[k++]='w'; o[k++]=v; }
      else if((c==0x17||c==0x18||c==0x21)&&nx==7){ for(int j=0;j<bl-1;j++) o[k++]=b[j]; o[k++]='e'; }
      else { for(int j=0;j<bl-1;j++) o[k++]=b[j]; o[k++]=v; }
      i++; continue; }
    for(int j=0;j<bl;j++) o[k++]=b[j];
    if(k>60) return -1; }
  o[k]=0;
  static const char rp[3][2]={{'o','u'},{'o','o'},{'u','u'}};
  for(int r_=0;r_<3;r_++){ int w=0; for(int i=0;i<k;i++){ if(i+1<k&&o[i]==rp[r_][0]&&o[i+1]==rp[r_][1]&&!(r_==0&&i+2<k&&(o[i+2]=='a'||o[i+2]=='e'||o[i+2]=='i'||o[i+2]=='o'))){ o[w++]=o[i]; i++; } else o[w++]=o[i]; } k=w; o[k]=0; }
  if(k&&o[0]>='a'&&o[0]<='z') o[0]-=32;
  return k; }
/* kana codes -> English words from the horse-name word list (fewest words); 0 if it does not split fully */
static int dsplit(const u8*r,int n,char*o,int cap){
  if(!dtab||n<2||n>17) return 0;
  int best[18]; int from[18]; DREC*wd[18];
  for(int i=0;i<=n;i++){ best[i]=99; from[i]=-1; wd[i]=0; } best[0]=0;
  for(int i=0;i<n;i++){ if(best[i]==99) continue;
    for(int j=i+2;j<=n&&j-i<=12;j++){ u8 key[12]; for(int t=0;t<12;t++) key[t]=(t<j-i)?r[i+t]:0;
      DREC*e=dfind(key); if(e&&best[i]+1<best[j]){ best[j]=best[i]+1; from[j]=i; wd[j]=e; } } }
  if(best[n]==99) return 0;
  DREC*seq[18]; int c=0; for(int j=n;j>0;j=from[j]) seq[c++]=wd[j];
  int k=0; for(int s=c-1;s>=0;s--){ const u8*e=seq[s]->e; int l=0; while(l<20&&e[l]) l++;
    if(k+(k?1:0)+l>cap) return 0; if(k) o[k++]=' '; for(int t=0;t<l;t++) o[k++]=(char)e[t]; }
  o[k]=0; return k; }
/* fallback guard: every char is kanji / kana / ー, the reading is at least as long as the name,
   and a katakana-only name reads exactly as written */
static int nreal(const u8*f,int rl,const u8*r){
  int nc=0,kata=1,ki=0;
  for(int i=0;i<16&&f[i];i+=2,nc++){ u8 a=f[i],b=f[i+1];
    if(a==0x83&&b>=0x40&&b<=0x96){ if(ki>=rl) return 0; u8 c=(u8)(b<0x80?b-0x3f:b-0x40); if(r[ki]!=c) kata=0; ki++; continue; }
    if(a==0x81&&b==0x5b){ if(ki>=rl||r[ki]!=0xfe) kata=0; ki++; continue; }
    kata=0;
    if(a==0x82&&b>=0x9f&&b<=0xf1) continue;
    if(a==0x98&&b>=0x73&&b<=0x9e) return 0;
    if((a>=0x88&&a<=0x9f)||(a>=0xe0&&a<=0xea)) continue;
    if(a==0x81&&b==0x58) continue;   /* 々 */
    return 0; }
  if(nc==0||rl<2||rl<nc||rl>4*nc+1) return 0;
  { u8 c0=r[0]; if(c0==1||c0==3||c0==5||c0==7||c0==9||c0==0x23||c0==0x43||c0==0x45||c0==0x47||c0==0x4e||c0==0xfe||c0==0x53) return 0; }
  int allk=1; for(int i=0;i<16&&f[i];i+=2) if(!(f[i]==0x83||(f[i]==0x81&&f[i+1]==0x5b))) allk=0;
  if(allk && !kata) return 0;
  { int alc=(f[-1]>=0x6b&&f[-1]<=0x9f); for(int i=0;i<16&&f[i];i++) if(f[i]<0x6b||f[i]>0x9f) alc=0; if(alc) return 0; }
  return 1; }
/* katakana-only SJIS name equals its kana-code reading */
static int kataeq(const u8*f,int fl,const u8*r,int rl){
  int ki=0; for(int i=0;i<fl;i+=2){ u8 a=f[i],b=f[i+1]; u8 c;
    if(a==0x83&&b>=0x40&&b<=0x96) c=(u8)(b<0x80?b-0x3f:b-0x40); else if(a==0x81&&b==0x5b) c=0xfe; else return 0;
    if(ki>=rl||r[ki]!=c) return 0; ki++; }
  return ki==rl; }
static void putf(u8*f,int L,const char*s,int pre){ u8 t[64]; if(L>64) L=64; for(int i=0;i<L;i++) t[i]=0; int k=0; if(pre) t[k++]=' ';
  for(int i=0;s[i]&&k<L-1;i++) t[k++]=(u8)s[i]; cpy(f,t,L); }
static const u8* kmap(const u8*f,int kind,int*len){ u8 key[18]; for(int i=0;i<17;i++) key[i]=f[i]; key[17]=(u8)kind;
  KREC*e=kfind(key); if(!e) return 0; int n=0; while(n<14&&e->r[n]) n++; *len=n; return e->r; }
/* club name -> English. Whole reading as dictionary words if it fits; otherwise piece by piece:
   letters/digits kept, each katakana run (which must appear in the reading) as English words or romaji.
   Kanji clubs only through the club list. 0 if not safe. */
static int clubeng(const u8*f,int cl,const u8*rr,int rl,char*o){
  int kata=0,ok=1; u8 run[20]; int rn=0; char out[40]; int k=0; int segs=0;
  for(int i=0;i<=cl;){
    int end=(i>=cl); u8 a=end?0:f[i], b=end?0:f[i+1]; int iskat=0; u8 cc=0;
    if(!end&&a==0x83&&b>=0x40&&b<=0x96){ iskat=1; cc=(u8)(b<0x80?b-0x3f:b-0x40); }
    else if(!end&&a==0x81&&b==0x5b){ iskat=1; cc=0xfe; }
    if(iskat){ if(rn<18) run[rn++]=cc; i+=2; continue; }
    if(rn){ /* flush katakana run: must appear in the reading */
      int found=0; for(int s0=0;s0+rn<=rl;s0++) if(eq(rr+s0,run,rn)){ found=1; break; }
      if(!found||rn<2) return 0;
      char w[40]; int n=dsplit(run,rn,w,24); if(n<=0) n=romaji(run,rn,w); if(n<=0||n>24) return 0;
      if(k&&out[k-1]!=' ') out[k++]=' '; if(k+n>36) return 0; for(int t=0;t<n;t++) out[k++]=w[t]; rn=0; kata=1; segs++; }
    if(end) break;
    if(a<0x80){ if(!((a>='A'&&a<='Z')||(a>='0'&&a<='9'))) return 0;
      if(k&&segs&&out[k-1]!=' '&&!(out[k-1]>='A'&&out[k-1]<='Z')&&!(out[k-1]>='0'&&out[k-1]<='9')) out[k++]=' '; out[k++]=(char)a; i++; continue; }
    if(a==0x82&&b>=0x60&&b<=0x79){ if(k&&out[k-1]>='a'&&out[k-1]<='z') out[k++]=' '; out[k++]=(char)('A'+b-0x60); i+=2; segs++; continue; }
    if(a==0x82&&b>=0x4f&&b<=0x58){ out[k++]=(char)('0'+b-0x4f); i+=2; continue; }
    return 0; /* kanji or other: not handled here */ }
  if(!kata||k<=0) return 0;
  out[k]=0;
  { char w[40]; int n=dsplit(rr,rl,w,13); if(n>0){ for(int t=0;t<=n;t++) o[t]=w[t]; return n; } }
  if(k>13) return 0;
  for(int t=0;t<=k;t++) o[t]=out[t]; return k; }
/* runtime map of names converted this session (owner, person, club, farm): Japanese text -> English */
#define RMN 8192
typedef struct { u32 h; u8 k[34]; char v[34]; } RENT;
static RENT*rmap;
static void rput(const u8*k,int kl,const char*v){ if(!rmap||kl<=0||kl>33) return; u32 h=fnvn(k,kl)|1;
  for(u32 i=h&(RMN-1),t=0;t<RMN;t++,i=(i+1)&(RMN-1)){ RENT*e=&rmap[i];
    if(e->h==0){ e->h=h; for(int j=0;j<34;j++) e->k[j]=(j<kl)?k[j]:0; int n=0; while(n<33&&v[n]){ e->v[n]=v[n]; n++; } e->v[n]=0; return; }
    if(e->h==h&&eq(e->k,k,kl)&&e->k[kl]==0) return; } }
static const char* rget(const u8*k,int kl){ if(!rmap||kl<=0||kl>33) return 0; u32 h=fnvn(k,kl)|1;
  for(u32 i=h&(RMN-1),t=0;t<RMN;t++,i=(i+1)&(RMN-1)){ RENT*e=&rmap[i]; if(e->h==0) return 0;
    if(e->h==h&&eq(e->k,k,kl)&&e->k[kl]==0) return e->v; } return 0; }
static int fstr(const u8*f,int L,char*o){ int n=0; while(n<L&&f[n]){ o[n]=(char)f[n]; n++; } o[n]=0; return n; }
/* remember a converted pair of name fields (surname+given) under their joined Japanese text */
static void rpair(const u8*jp1,int l1,const u8*jp2,int l2,const u8*en){ u8 k[40]; if(l1+l2>33) return; cpy(k,jp1,l1); if(l2) cpy(k+l1,jp2,l2);
  char v[40]; int a=fstr(en,17,v); int b=fstr(en+17,17,v+a); (void)b; rput(k,l1+l2,v);
  if(l2&&a>0&&en[0]<0x80){ char w[20]; int n=fstr(en,17,w); while(n>0&&w[n-1]==' ') w[--n]=0; if(n>0) rput(jp1,l1,w); } }
/* katakana SJIS -> kana codes; 0 if not all katakana */
static int kata2codes(const u8*f,int fl,u8*r){ int k=0; for(int i=0;i<fl;i+=2){ u8 a=f[i],b=f[i+1];
    if(a==0x83&&b>=0x40&&b<=0x96) r[k++]=(u8)(b<0x80?b-0x3f:b-0x40); else if(a==0x81&&b==0x5b) r[k++]=0xfe; else return 0; } return k; }
/* horse name from kana codes: the game's own English for real horses, else dictionary words, else romaji */
static int hname(const u8*r,int n,char*o,int cap){
  if(n<=0||n>20) return 0;
  if(htab){ u8 key[20]; for(int i=0;i<20;i++) key[i]=(i<n)?r[i]:0; HREC*e=hfind(key);
    if(e){ int l=0; while(l<32&&e->e[l]&&l<cap){ o[l]=(char)e->e[l]; l++; } if(l<32&&e->e[l]) return 0; o[l]=0; return l; } }
  int l=dsplit(r,n,o,cap); if(l>0) return l;
  l=romaji(r,n,o); if(l<=0||l>cap) return 0; return l; }
/* full-width letters/digits/punctuation only -> plain ASCII (fixes the letter-spaced player names from old saves) */
static int fwfoldf(const u8*f,int fl,char*o){ int k=0; for(int i=0;i<fl;i+=2){ u8 c=f[i],d=f[i+1];
    if(c==0x82&&d>=0x60&&d<=0x79) o[k++]=(char)('A'+d-0x60); else if(c==0x82&&d>=0x81&&d<=0x9a) o[k++]=(char)('a'+d-0x81);
    else if(c==0x82&&d>=0x4f&&d<=0x58) o[k++]=(char)('0'+d-0x4f); else if(c==0x81&&d==0x40) o[k++]=' ';
    else if(c==0x81&&d==0x44) o[k++]='.'; else if(c==0x81&&d==0x66) o[k++]='\''; else if(c==0x81&&d==0x7c) o[k++]='-'; else if(c==0x81&&d==0x95) o[k++]='&';
    else return 0; }
  o[k]=0; return k; }
/* full-width player names found in records (farm, owner): their other copies are folded too */
static u8 fwk[8][34]; static int fwl[8]; static int fwn;
static void fwadd(const u8*f,int fl){ if(fl<6||fl>32) return; for(int i=0;i<fwn;i++) if(fwl[i]==fl&&eq(fwk[i],f,fl)) return; if(fwn<8){ cpy(fwk[fwn],f,fl); fwl[fwn]=fl; fwn++; } }
static int fwcopy(u8*p){ for(int i=0;i<fwn;i++){ int l=fwl[i]; if(p[0]==fwk[i][0]&&p[1]==fwk[i][1]&&eq(p,fwk[i],l)&&p[l]==0){ char o[40]; int n=fwfoldf(p,l,o); if(n<=0) return 0;
      u8 t[34]; for(int j=0;j<l;j++) t[j]=(j<n)?(u8)o[j]:0; cpy(p,t,l); return l; } } return 0; }
/* owner record: ff ff [rep 17][rep 17][reading 9+9][club 14] */

/* romaji with common katakana words at the end in English: ...ホース -> "... Horse", クラブ -> "Club" */
static const u8 TW[][10]={ {3,0x3b,0xfe,0x19}, {3,0x0f,0x49,0x36}, {5,0x4c,0xfe,0x17,0x53,0x10}, {4,0x35,0x01,0xfe,0x40}, {4,0x19,0x1f,0x23,0x29}, {5,0x19,0x26,0xfe,0x36,0x4b}, {4,0x18,0x43,0x31,0x53} };
static const char*TWE[]={"Horse","Club","Racing","Farm","Stud","Stable","Japan"};
static int romw(const u8*r,int n,char*o){
  for(int w=0;w<7;w++){ int l=TW[w][0]; if(n==l&&eq(r,TW[w]+1,l)){ int k=0; while(TWE[w][k]){ o[k]=TWE[w][k]; k++; } o[k]=0; return k; } }
  for(int w=0;w<7;w++){ int l=TW[w][0]; if(n>=l+2&&eq(r+n-l,TW[w]+1,l)){ int k=romw(r,n-l,o); if(k<=0) return k; o[k++]=' '; for(int j=0;TWE[w][j];j++) o[k++]=TWE[w][j]; o[k]=0; return k; } }
  return romaji(r,n,o); }
/* kanji club name + letters (友駿HC, 東京HR, 大樹RC): letters must match the end of the reading */
static int kclub(const u8*f,int cl,const u8*rr,int rl,char*o){
  int i=0,nk=0; while(i+1<cl&&islead(f[i])){ u8 a=f[i]; if(a==0x83||a==0x81||a==0x82) return 0; nk++; i+=2; }
  if(nk<1||nk>4) return 0; int nl=cl-i; if(nl<1||nl>3) return 0;
  u8 tail[24]; int tl=0;
  for(int j=0;j<nl;j++){ u8 c=f[i+j]; const u8*t;
    if(c=='H') t=TW[0]; else if(c=='C') t=TW[1]; else if(c=='R') t=TW[2]; else return 0;
    cpy(tail+tl,t+1,t[0]); tl+=t[0]; }
  int pl=rl-tl; if(pl<2||pl>4*nk+1||!eq(rr+pl,tail,tl)) return 0;
  int k=romaji(rr,pl,o); if(k<=0||k+1+nl>13) return 0;
  o[k++]=' '; for(int j=0;j<nl;j++) o[k++]=(char)f[i+j]; o[k]=0; return k; }
/* kanji/hiragana farm names in the farm list (structure checked): reading as romaji, split after a known surname */
static int sfarm(const u8*p){
  for(int j=1;j<=4;j++) if(p[-j]<1||p[-j]>0x1f) return 0;
  for(int j=29;j<=41;j+=4){ u8 c=p[j]; if(!(c==0x25||c==0x65||c==0xa5||c==0xe5)||p[j+1]||p[j+2]||p[j+3]) return 0; }
  return 1; }
static int kfarm(const u8*p,int fl,const u8*rr,int rl,char*c){
  int nc=0; for(int i=0;i<fl;i+=2){ u8 a=p[i],b=p[i+1]; nc++;
    if(a==0x82&&b>=0x9f&&b<=0xf1) continue; if((a>=0x88&&a<=0x9f)||(a>=0xe0&&a<=0xea)) continue; if(a==0x81&&b==0x58) continue; return 0; }
  if(nc<1||nc>6||rl<2||rl>4*nc+1) return 0;
  { u8 key[18]; for(int t=0;t<17;t++) key[t]=(t<fl)?p[t]:0;
    for(int kd=1;kd<=2;kd++){ int l=0; const u8*r=kmap(key,kd,&l); if(r&&l==rl&&eq(r,rr,rl)){ int n=romaji(rr,rl,c); if(n>0&&n<=12) return n; } } }
  for(int k=fl-2;k>=2;k-=2){ u8 k1[18],k2[18]; for(int t=0;t<17;t++){ k1[t]=(t<k)?p[t]:0; k2[t]=(t<fl-k)?p[k+t]:0; }
    int sl=0,gl=0; const u8*sr=kmap(k1,1,&sl); const u8*gr=kmap(k2,2,&gl);
    int m1=(sr&&sl<rl&&eq(rr,sr,sl)), m2=(gr&&gl<rl&&eq(rr+rl-gl,gr,gl));
    int cut=-1; if(m1&&m2&&sl+gl==rl) cut=sl; else if(m1&&k>=4&&fl-k>=4) cut=sl; else if(m2&&k>=4&&fl-k>=4) cut=rl-gl;
    if(cut<2||rl-cut<1) continue;
    char a[64],b[64]; int la=romaji(rr,cut,a), lb=romaji(rr+cut,rl-cut,b); if(la<=0||lb<=0) continue;
    if(la+1+lb<=12){ for(int t=0;t<la;t++) c[t]=a[t]; c[la]=' '; for(int t=0;t<=lb;t++) c[la+1+t]=b[t]; return la+1+lb; }
    if(la+3<=12){ for(int t=0;t<la;t++) c[t]=a[t]; c[la]=' '; c[la+1]=b[0]; c[la+2]='.'; c[la+3]=0; return la+3; } }
  int n=romw(rr,rl,c); if(n<=0||n>12) return 0; return n; }
/* club representative record (Lavs save "Rep. 西川哲" / "東京HR"): [surname 17][given 17][club reading 9][9][club name 14], no 0xffff prefix */
static u32 nrep2;
static int repconv(u8*p){
  if(p[-1]==0xff) return 0;
  int s1=sjt(p,17); if(s1<=0) return 0; int g=sjt(p+17,17); if(g<=0) return 0;
  int cl=clubf(p+52); if(cl<=0) return 0; if(rdf(p+34,9)<=0) return 0;
  u8 ck[16]; for(int t=0;t<16;t++) ck[t]=(t<cl)?p[52+t]:0; CREC*ce=cfind(ck); if(!ce) return 0;   /* only known clubs */
  u8 key[34]; clean(key,p,s1,17); clean(key+17,p+17,g,17);
  int sl=0,gl=0; const u8*sr=kmap(key,1,&sl); const u8*gr=kmap(key+17,2,&gl);
  if(!sr||!gr) return 0; if(eq(sr,p+34,sl<9?sl:9)||eq(gr,p+43,gl<9?gl:9)) return 0;   /* kanji map entry learned from the club reading: not the person's name */
  char a[64],b[64]; if(romaji(sr,sl,a)<=0||romaji(gr,gl,b)<=0) return 0;   /* name and club together or not at all */
  putf(p,17,a,0); putf(p+17,17,b,1);
  { char c[64]; int n=0; while(n<13&&ce->e[n]){ c[n]=(char)ce->e[n]; n++; } c[n]=0; putf(p+52,14,c,0); }
  nrep2++; return 1; }
static int oconv(u8*p){
  if(p[-1]!=0xff||p[-2]!=0xff) return 0;
  u8 bef_[70]; cpy(bef_,p,70);
  int s1=sjt(p,17); if(s1<=0) return 0; int g=sjt(p+17,17); if(g<0) return 0;
  u8 kb_[35]; u8*key=kb_+1; kb_[0]=p[-1]; clean(key,p,s1,17); clean(key+17,p+17,g,17);
  NREC*e=nfind(key); int did=0;
  if(e){ cpy(p,e->e,34); did=1; }
  u8 rr[20]; int rl=0, ra=rdf(p+34,9), rb2=rdf(p+43,9); if(ra>0&&rb2>=0){ cpy(rr,p+34,ra); if(rb2) cpy(rr+ra,p+43,rb2); rl=ra+rb2; }
  if(rl<=0){ if(did) nown++; return did; }
  int cl=clubf(p+52);
  if(!did){ int sl=0,gl=0; const u8*sr=kmap(key,1,&sl); const u8*gr=g?kmap(key+17,2,&gl):0; char a[64],b[64];
    if(sr && (g==0 || gr)){ if(romaji(sr,sl,a)>0 && (!g || romaji(gr,gl,b)>0)){ putf(p,17,a,0); if(g) putf(p+17,17,b,1); did=1; } }
    else if(cl<=0 && g>0 && rb2>0 && nreal(key+0,ra,p+34) && nreal(key+17,rb2,p+43) && p[-1]==0xff){ if(romw(p+34,ra,a)>0 && romw(p+43,rb2,b)>0){ putf(p,17,a,0); putf(p+17,17,b,1); did=1; } }
    else if(sr && cl<=0 && g>0 && rl>sl && eq(rr,sr,sl)){ if(romaji(sr,sl,a)>0 && romaji(rr+sl,rl-sl,b)>0){ putf(p,17,a,0); putf(p+17,17,b,1); did=1; } } }
  if(did) nown++;
  if(did) NLOG(e?"own-table":"own-map",p,bef_,68);
  if(did && p[0]<0x80) rpair(key,s1,key+17,g,p);
  if(cl>0){ char c[64]; int n=0; u8 ck[16]; for(int t=0;t<16;t++) ck[t]=(t<cl)?p[52+t]:0; CREC*ce=cfind(ck);
    if(ce){ while(n<13&&ce->e[n]){ c[n]=(char)ce->e[n]; n++; } c[n]=0; }
    else if(cl>=4 && rl>=3){ n=clubeng(p+52,cl,rr,rl,c); if(n<=0) n=kclub(p+52,cl,rr,rl,c); }
    if(n>0){ putf(p+52,14,c,0); nclub++; did=1; rput(ck,cl,c); NLOG("club",p,bef_,68); } }
  return did; }
/* farm record: [name 13][reading 16]; katakana name must read as written, kanji names only from the farm list */
/* a second farm list (owners' farms): 32-byte records [name 13][reading 15][4], neighbour record also a name + reading */
static int farr1(const u8*q){ int l=sjt(q,13); if(l<=0) return 0; return rdf(q+13,15)>1; }
static int farr(const u8*p){ if(p-32>=nrb&&farr1(p-32)) return 1; return farr1(p+32); }
static int kmapeq(const u8*p,int fl,const u8*rr,int rl){ u8 key[18]; for(int t=0;t<17;t++) key[t]=(t<fl)?p[t]:0; int l=0; const u8*r=kmap(key,1,&l); return r&&l==rl&&eq(r,rr,rl); }
static int fconv(u8*p){
  int fl=sjt(p,13);
  if(fl<=0){ int ml=mixf(p,13); if(ml<=2||rdf(p+13,15)<=1) return 0; u8 mk[13]; clean(mk,p,ml,13); FREC*me=ffind(mk); if(!me) return 0;
    char c[16]; int l=0; while(l<12&&me->e[l]){ c[l]=(char)me->e[l]; l++; } c[l]=0; u8 bf[30]; cpy(bf,p,30); putf(p,13,c,0); nfarm++; rput(mk,ml,c); NLOG("farm",p,bf,13); return 1; }
  int rl=rdf(p+13,15); if(rl<=1) return 0;
  u8 fk[13]; clean(fk,p,fl,13);
  char c[64]; int n=fwfoldf(p,fl,c);
  if(n>0){ int lt=0; for(int i=0;i<n;i++) if((c[i]>='A'&&c[i]<='Z')||(c[i]>='a'&&c[i]<='z')) lt++; if(lt<3) n=0; }
  if(n>0){ fwadd(fk,fl); putf(p,13,c,0); nfarm++; rput(fk,fl,c); return 1; }
  FREC*e=ffind(fk); n=0;
  if(e){ int l=0; while(l<12&&e->e[l]) l++; for(int i=0;i<l;i++) c[i]=(char)e->e[i]; c[l]=0; n=l; }
  else if(kataeq(p,fl,p+13,rl)){ n=dsplit(p+13,rl,c,12); if(n<=0){ n=romaji(p+13,rl,c); if(n>12) n=0; } }
  else if(sfarm(p)){ n=kfarm(p,fl,p+13,rl,c); }
  else if(farr(p)||kmapeq(p,fl,p+13,rl)){ n=kfarm(p,fl,p+13,rl,c); }
  else return 0;
  if(n<=0) return 0;
  { u8 bf[30]; cpy(bf,p,30); putf(p,13,c,0); nfarm++; rput(fk,fl,c); NLOG("farm",p,bf,13); } return 1; }
/* history record (past horses with text names): [horse 48][sire 48][dam 48][owner 33][breeder 23]
   names are katakana, owner/breeder Japanese text from before the patch */
static int histhorse(u8*f){ int fl=sjf(f,48); if(fl<=0) return 0; u8 r[24]; if(fl>40) return 0; int n=kata2codes(f,fl,r); if(n<2) return 0;
  char o[64]; int l=hname(r,n,o,47); if(l<=0) return 0; putf(f,48,o,0); return 1; }
static int histowner(u8*f,int L){ int fl=sjt(f,L); if(fl<0) fl=mixt(f,L); if(fl<=0) return 0; char o[64]; int n=fwfoldf(f,fl,o); if(n>0) fwadd(f,fl);
  if(n<=0){ const char*v=rget(f,fl); if(v){ n=0; while(v[n]&&n<L-1){ o[n]=v[n]; n++; } o[n]=0; } }
  if(n<=0&&fl<=12){ u8 fk[13]; clean(fk,f,fl,13); FREC*fe=ffind(fk); if(fe){ n=fstr(fe->e,12,o); } }
  if(n<=0){ /* surname+given joined: try each split against the people list */
    for(int k=2;k<fl&&n<=0;k+=2){ u8 key[34]; for(int i=0;i<34;i++) key[i]=0; if(k>16||fl-k>16) continue; cpy(key,f,k); cpy(key+17,f+k,fl-k);
      NREC*e=nfind(key); if(e){ int a=fstr(e->e,17,o); int b=fstr(e->e+17,17,o+a); n=a+b; } } }
  if(n<=0){ u8 r[24]; int kn=(fl<=40)?kata2codes(f,fl,r):0; if(kn>=2){ n=dsplit(r,kn,o,L-1); if(n<=0){ n=romaji(r,kn,o); if(n>L-1) n=0; } } }
  if(n<=0) return 0; putf(f,L,o,0); return 1; }
static int hconv(u8*p){
  if(sjf(p,48)<=0) return 0;
  int a=sjf(p+48,48), b=sjf(p+96,48); if(a<4||b<4) return 0;   /* sire and dam always present */
  u8 t[24]; if(kata2codes(p,sjf(p,48),t)<2) return 0;
  if(!kata2codes(p+48,a,t)||!kata2codes(p+96,b,t)) return 0;
  { int o1=sjt(p+0x90,33); if(o1<0) o1=mixt(p+0x90,33); int o2=sjt(p+0xb1,23); if(o2<0) o2=mixt(p+0xb1,23); if(o1<2||o2<2) return 0; }
  int did=0; did|=histhorse(p); did|=histhorse(p+48); did|=histhorse(p+96);
  did|=histowner(p+0x90,33); did|=histowner(p+0xb1,23);
  if(did) nhist++; return did; }
/* pedigree pair (world top-100 / horse detail records): [u32 id][u32 id][sire 48][dam 48], katakana from before the patch */
static int sjn(const u8*f,int L){ int n=0; while(n<L-1&&f[n]){ if(!islead(f[n])) return -1; u8 t=f[n+1]; if(t<0x40||t==0x7f||t>0xfc) return -1; n+=2; } return (n<L)?n:-1; }
static int pedhorse(u8*f,int fl){ u8 r[24]; int n=kata2codes(f,fl,r); if(n<2) return 0; char o[64]; int l=hname(r,n,o,47); if(l<=0) return 0; putf(f,48,o,0); return 1; }
static int pedconv(u8*p){
  if(p[-1]||p[-2]||p[-5]||p[-6]||!(p[-4]|p[-3])) return 0;
  int a=sjn(p,48), b=sjn(p+48,48); if(a<4||b<4||a>40||b>40) return 0;
  u8 t[24]; if(!kata2codes(p,a,t)||!kata2codes(p+48,b,t)) return 0;
  int did=0; did|=pedhorse(p,a); did|=pedhorse(p+48,b); if(did) nhist++; return did; }
/* player-named horses from old saves: the custom name table holds katakana codes; show English instead
   (real-horse list, dictionary words, romaji). The stored name is not changed. */
static u8*cck; static u8*ccv;
static int enc_en(const char*e,u8*o,int cap){ int k=0; for(int i=0;e[i];i++){ char c=e[i]; u8 v;
    if(c>='A'&&c<='Z') v=(u8)(c+0x2a); else if(c>='a'&&c<='z') v=(u8)(c+0x24); else if(c>='0'&&c<='9') v=(u8)(c+0x31);
    else if(c==' ') v=0x9f; else if(c=='\'') v=0xa0; else if(c=='.') v=0xa1; else if(c=='-') v=0xfd; else continue;
    if(k>=cap) return 0; o[k++]=v; } o[k]=0; return k; }
static int names_custom(u16 idx,u8*out){
  if(!dtab||idx>=0x6590) return 0;
  int n=0; while(n<9&&out[n]){ u8 c=out[n]; if(!((c>=1&&c<=0x56)||c==0xfe)) return 0; n++; }
  if(n<2||out[n]) return 0;
  if(!cck){ cck=(u8*)VirtualAlloc(0,0x6590ull*(10+24),0x3000,4); if(!cck) return 0; ccv=cck+0x6590ull*10; }
  u8*ck=cck+idx*10; u8*cv=ccv+idx*24;
  if(ck[0]==(u8)n && eq(ck+1,out,n) && cv[0]){ int l=0; while(l<23&&cv[l]){ out[l]=cv[l]; l++; } out[l]=0; return 1; }
  char e[48]; int l=hname(out,n,e,23); if(l<=0) return 0;
  u8 codes[24]; int cl=enc_en(e,codes,23); if(cl<=0) return 0;
  ck[0]=(u8)n; cpy(ck+1,out,n); cpy(cv,codes,cl); cv[cl]=0; if(cl<23) cv[cl]=0;
  cpy(out,codes,cl); out[cl]=0; ncust++; return 1; }
/* sire-line records: [yy yy 76 09 ?? 00 00 00 ??][line name 35] then ff */
static u32 nline;
static int lconv(u8*p){
  if(p[-7]!=0x76||p[-6]!=0x09||p[-4]||p[-3]||p[-2]||p[-10]!=0xff||p[35]!=0xff) return 0;
  int fl=sjf(p,35); if(fl<4) return 0; u8 r[24]; if(fl>40) return 0; int n=kata2codes(p,fl,r); if(n<2) return 0;
  char o[48]; int l=hname(r,n,o,34); if(l<=0) return 0; putf(p,35,o,0); nline++; return 1; }
/* katakana person name field -> English from the foreign-name list (Pat / Eddery); 0 if not listed */
static int xword(const u8*r,int n,char*o){ if(n<2||n>12) return 0; u8 key[12]; for(int t=0;t<12;t++) key[t]=(t<n)?r[t]:0;
  DREC*e=xfind(key); if(!e) return 0; int l=0; while(l<16&&e->e[l]){ o[l]=(char)e->e[l]; l++; } o[l]=0; return l; }
static int xname(const u8*f,int fl,char*o){ if(!xtab||fl<=0||fl>32) return 0;
  if(fl>=6&&f[fl-4]==0x8e&&f[fl-3]==0x4f&&f[fl-2]==0x90&&f[fl-1]==0xa2){ int l=xname(f,fl-4,o); if(l<=0||l+4>16) return 0; o[l++]=' '; o[l++]='I'; o[l++]='I'; o[l++]='I'; o[l]=0; return l; }   /* 三世 */
  u8 r[24]; int n=kata2codes(f,fl,r); if(n<2) return 0;
  int l=xword(r,n,o); if(l>0) return l;
  for(int k=2;k<=n-2;k++){ char a[20],b[20]; int la=xword(r,k,a); if(la<=0) continue; int lb=xword(r+k,n-k,b); if(lb<=0||la+1+lb>16) continue;
    for(int t=0;t<la;t++) o[t]=a[t]; o[la]=' '; for(int t=0;t<=lb;t++) o[la+1+t]=b[t]; return la+1+lb; }
  return 0; }
/* katakana person name field -> English from the foreign-name list (Pat / Eddery); 0 if not listed */
static int nconv(u8*p){
  if(p[-1]==0xff&&p[-2]==0xff) return oconv(p);
  int s=sjt(p,17); if(s<=0) return 0; int g=sjt(p+17,17); int gjr=0;
  if(g<0){ int l=0; while(l<16&&p[17+l]) l++; if(l>=5&&p[17+l-3]=='J'&&p[17+l-2]=='r'&&p[17+l-1]=='.'&&p[17+l-4]>=0x40&&sjt(p+17,l-3+1)<0){ u8 t[17]; for(int i=0;i<17;i++) t[i]=0; cpy(t,p+17,l-3); if(sjt(t,17)==l-3){ g=l-3; gjr=1; } } }
  if(g<0) return 0;
  int strict=(sjfield(p)>0&&sjfield(p+17)>=0);
  int r1=rdfield(p+34), r2=rdfield(p+43);
  if(r1<=0||r2<0) return 0;   /* people records carry readings (string tables with English after the name do not) */
  u8 key[34]; clean(key,p,s,17); clean(key+17,p+17,g,17);
  NREC*e=nfind(key);
  if(e&&!strict&&(NOIDTRUST||!(p[-4]|p[-3]|p[-2]|p[-1]))){ /* renamed record: only when a reading backs the kanji (old bytes after the NUL are common in other string tables) */
    int sl=0,gl=0; const u8*sr=kmap(key,1,&sl); const u8*gr=g?kmap(key+17,2,&gl):0;
    int m1=sr&&sl==r1&&eq(sr,p+34,r1), m2=gr&&gl==r2&&eq(gr,p+43,r2);
    if(!(m1||m2)||!nreal(p,r1,p+34)) e=0; }
  if(e&&p[0]==0x82){ int fwonly=1; for(int i=0;i<s;i+=2) if(!(p[i]==0x82&&p[i+1]>=0x4f&&p[i+1]<=0x9a)) fwonly=0;
    int up=1,sp=0; for(int i=0;i<r1;i++){ if(p[34+i]==0x20) sp=1; else if(p[34+i]<0x41) up=0; }
    if(fwonly&&(up||sp)) e=0; }   /* "ＫＲ" + "KR" is a JP->English string table entry, not a person */
  if(e){ u8 bf[34]; cpy(bf,p,34); cpy(p,e->e,34); nhit++; rpair(key,s,key+17,g,p); NLOG("ppl-table",p,bf,34); return 1; }
  if(r1<=0||r2<0) return 0;
  { char a[24],b[24]; int la=xname(key,s,a), lb=g?xname(key+17,g,b):0;   /* foreign names: both parts listed */
    if(gjr&&lb>0&&lb+4<=16){ b[lb++]=' '; b[lb++]='J'; b[lb++]='r'; b[lb++]='.'; b[lb]=0; } else if(gjr) lb=0;
    if(la>0&&(g==0||lb>0)){ u8 bf[34]; cpy(bf,p,34); putf(p,17,a,0); if(lb) putf(p+17,17,b,1); else putf(p+17,17,"",0);
      nrom++; rpair(key,s,key+17,g,p); NLOG("ppl-foreign",p,bf,34); return 1; } }
  if(gjr) return 0;
  if(strict&&g>0&&r2>0&&p[0]==0x82){ /* player family: full-width typed surname (Ｌａｖ) + kanji given name */
    char a[40],b[40]; int la=fwfoldf(key,s,a); int lt=0; for(int i=0;i<la;i++) if((a[i]>='A'&&a[i]<='Z')||(a[i]>='a'&&a[i]<='z')) lt++;
    if(la>0&&lt>=2&&nreal(p+17,r2,p+43)){ int lb=romaji(p+43,r2,b); if(lb>0){ u8 bf[34]; cpy(bf,p,34); putf(p,17,a,0); putf(p+17,17,b,1);
      nrom++; NLOG("ppl-fw",p,bf,34); return 1; } } }
  if(g>0 && r2==0) return 0; if(g==0 && r2>0) return 0;
  if(r1==9) return 0; /* a 9-code first reading runs on into the next field: not a [9][9] record */
  if(!nreal(p,r1,p+34)||(g>0&&!nreal(p+17,r2,p+43))) return 0;
  const u8*ra=p+34,*rb=p+43; int na=r1,nb=r2;
  if(!strict&&(NOIDTRUST||!(p[-4]|p[-3]|p[-2]|p[-1]))){ /* renamed record with no id in front (old bytes after the NUL): the readings may belong to the old name, so check them against the kanji lists */
    int sl=0,gl=0; const u8*sr=kmap(key,1,&sl); const u8*gr=g?kmap(key+17,2,&gl):0;
    int m1=sr&&sl==r1&&eq(sr,p+34,r1), m2=gr&&gl==r2&&eq(gr,p+43,r2);
    if(sr&&(g==0||gr)){ ra=sr; na=sl; rb=gr; nb=gl; }
    else if((sr&&!m1)||(gr&&!m2)||!(m1||m2)) return 0; }
  else if(!strict){ /* renamed record with an id in front: readings were rewritten with the name, but keep to plain person names */
    int ns=s/2, ng=g/2; if(g==0||r1>3*ns+1||r2>3*ng+1) return 0; }
  char a[64],b[64]; int la=romaji(ra,na,a); if(la<=0) return 0;
  int lb=0; if(nb>0&&g>0){ lb=romaji(rb,nb,b); if(lb<=0) return 0; }
  { u8 bf[34]; cpy(bf,p,34); putf(p,17,a,0); if(lb) putf(p+17,17,b,1); else putf(p+17,17,"",0);
  nrom++; rpair(key,s,key+17,g,p); NLOG("ppl-romaji",p,bf,34); } return 1; }
static const char*FAMJ[]={"\x83\x72\x83\x85\x81\x5b\x83\x60\x83\x74\x83\x8b\x83\x68\x83\x8a\x81\x5b\x83\x7d\x81\x5b","\x83\x74\x83\x8d\x83\x8a\x81\x5b\x83\x58\x83\x4a\x83\x62\x83\x76","\x83\x41\x83\x58\x83\x67\x83\x6a\x83\x56\x83\x81\x83\x93\x83\x67","\x83\x77\x83\x8c\x83\x93\x83\x54\x81\x5b\x83\x74","\x83\x47\x83\x58\x83\x54\x81\x5b\x83\x66\x83\x42\x81\x5b","\x83\x4e\x83\x8c\x83\x43\x83\x4f\x83\x5f\x81\x5b\x83\x8d\x83\x62\x83\x60","\x83\x60\x83\x62\x83\x76\x83\x67\x83\x62\x83\x76","\x83\x76\x83\x8d\x83\x7c\x83\x93\x83\x60\x83\x58","\x83\x74\x83\x89\x83\x58\x83\x67\x83\x8c\x81\x5b\x83\x67","\x83\x54\x83\x93\x83\x5e\x83\x58\x83\x67\x83\x89","\x83\x41\x83\x8f\x81\x5b\x83\x89\x83\x62\x83\x56\x81\x5b","\x83\x68\x83\x4e\x83\x54","\x83\x74\x83\x8a\x83\x5b\x83\x62\x83\x67","\x83\x76\x83\x8a\x83\x65\x83\x42\x83\x7c\x83\x8a\x81\x5b","\x83\x41\x83\x8b\x83\x67\x83\x94\x83\x42\x83\x58\x83\x4a\x81\x5b","\x83\x74\x83\x89\x83\x43\x83\x6f\x83\x43\x83\x69\x83\x43\x83\x67","\x83\x8a\x83\x81\x83\x93\x83\x75\x83\x89\x83\x93\x83\x58","\x83\x67\x81\x5b\x83\x79\x83\x93\x83\x6e\x83\x45","\x83\x5a\x83\x93\x83\x67\x83\x8b\x81\x5b\x83\x4a\x81\x5b","\x83\x41\x83\x74\x83\x46\x83\x4e\x83\x56\x83\x87\x83\x93","\x83\x54\x83\x43\x83\x82\x83\x93\x83\x59\x83\x56\x83\x85\x81\x5b\x83\x59","\x83\x75\x81\x5b\x83\x68\x83\x8f\x81\x5b\x83\x8b","\x83\x58\x83\x67\x83\x8c\x83\x93\x83\x4c\x83\x58","\x83\x74\x83\x8b\x81\x5b\x83\x67\x83\x74\x83\x8b","\x83\x41\x81\x5b\x83\x67\x83\x8c\x83\x58","\x83\x70\x83\x89\x83\x74\x83\x42\x83\x93\x83\x89\x83\x58","\x83\x60\x83\x46\x83\x8d\x83\x4c\x81\x5b\x83\x8d\x81\x5b\x83\x59","\x83\x5f\x83\x43\x83\x69\x83\x4a\x81\x5b\x83\x8b","\x83\x58\x83\x4a\x81\x5b\x83\x8c\x83\x62\x83\x67\x83\x43\x83\x93\x83\x4e","\x83\x54\x83\x93\x83\x5e\x83\x8b\x83\x60\x83\x41\x83\x69","\x83\x66\x83\x42\x83\x69\x81\x5b\x83\x70\x81\x5b\x83\x67\x83\x69\x81\x5b","\x83\x41\x83\x93\x83\x65\x83\x42\x83\x62\x83\x4e\x83\x94\x83\x40\x83\x8a\x83\x85\x81\x5b","\x83\x8d\x83\x43\x83\x84\x83\x8b\x83\x54\x83\x62\x83\x56\x83\x85","\x83\x81\x83\x57\x83\x8d\x83\x7b\x83\x54\x83\x63","\x83\x54\x83\x82\x83\x8f\x81\x5b\x83\x8b","\x83\x74\x83\x89\x83\x43\x83\x41\x81\x5b\x83\x59\x83\x4a\x81\x5b\x83\x58","\x83\x57\x83\x46\x83\x78\x83\x8a\x83\x4a","\x83\x8a\x83\x76\x83\x89\x83\x43","\x83\x7c\x81\x5b\x83\x65\x81\x5b\x83\x57","\x83\x7d\x83\x8b\x83\x4b\x83\x8c\x81\x5b\x83\x65\x83\x93","\x83\x8c\x83\x66\x83\x42\x83\x72\x81\x5b\x83\x4f\x83\x62\x83\x68","\x83\x80\x83\x80\x83\x5e\x83\x59\x83\x7d\x83\x6e\x83\x8b","\x83\x8c\x83\x66\x83\x42\x83\x73\x83\x62\x83\x67","\x83\x4e\x83\x43\x81\x5b\x83\x93\x83\x59\x83\x58\x83\x5e\x83\x65\x83\x85\x81\x5b\x83\x67","\x83\x63\x81\x5b\x83\x7b\x83\x75","\x83\x89\x83\x60\x83\x4a","\x83\x43\x83\x62\x83\x63\x83\x41\x83\x78\x83\x62\x83\x67","\x83\x69\x83\x45\x83\x8f\x83\x62\x83\x67",0};
static const char*FAME[]={"Beautiful Dreamer","Flories Cup","Astonishment","Helen Surf","Esther Dee","Craigdarroch","Tip Top","Propontis","Frustrate","Saint Astra","Our Lassie","Doxa","Frizette","Pretty Polly","Altoviscar","Fly by Night","Remembrance","Torpenhow","St. Lucre","Affection","Simon's Shoes","Boudoir","Strenkis","Fruitful","Artless","Paraffine Lass","Cherokee Rose","Dyna Carle","Scarlet Ink","Santa Luciana","Dinner Partner","Antique Value","Royal Sash","Mejiro Bosatsu","Samovar","Friar's Carse","Djebellica","Reply","Portage","Margarethen","Lady Be Good","Mumtaz Mahal","Lady Pit","Queen's Statute","Two Bob","La Chica","Itsabet","Now What",0};
/* female family line names (broodmare list "Dam" column) kept per horse in 33-byte slots in old saves */
static u32 nfam; static int nmapd;
/* family names not in the list above (later families, e.g. a real mare like Ichi Kiyosachi): same 33-byte slots,
   accepted only in the family structures: [year u16 + 4 u16] records, ff-run table, or a cache slot next to a family name */
static int famslot(const u8*q){ for(int k=0;FAME[k];k++){ int l=slen(FAME[k]); if(eq(q,(const u8*)FAME[k],l)&&!q[l]) return 1; }
  for(int k=0;FAMJ[k];k++){ int l=slen(FAMJ[k]); if(eq(q,(const u8*)FAMJ[k],l)&&!q[l]) return 1; } return 0; }
static int famconv2(u8*p){
  int fl=0; while(fl<32&&p[fl]) fl+=2; if(fl<6||fl>30||p[fl]) return 0;
  for(int t=fl;t<33;t++) if(p[t]) return 0;
  if(islead(p[-1])) return 0;
  u8 r[24]; int n=kata2codes(p,fl,r); if(n<3) return 0;
  char o[64]; int l=hname(r,n,o,32); if(l<=0) return 0;
  int ok=0; u16 y1=(u16)(p[-10]|p[-9]<<8), y2=(u16)(p[-9]|p[-8]<<8);
  if(!nmapd&&((y1>=0x7b0&&y1<=0x800)||(y2>=0x7b0&&y2<=0x800))) ok=1;
  if(!nmapd&&p[-1]==0xff&&p[-2]==0xff&&p[-3]==0xff&&p[-4]==0xff&&p[-5]==0xff&&p[-6]==0xff&&p[-7]==0xff&&p[-8]==0xff) ok=1;
  if(!ok&&p-33>=nrb){ const u8*q=p-33; if(famslot(q)||(eq(q,p,fl)&&!q[fl])||(eq(q,(const u8*)o,l)&&!q[l])) ok=1; }
  if(!ok) return 0;
  for(int t=0;t<33;t++) p[t]=(t<l)?(u8)o[t]:0; nfam++; return 33; }
static int famconv(u8*p){
  for(int k=0;FAMJ[k];k++){ const u8*j=(const u8*)FAMJ[k]; int l=slen(FAMJ[k]); if(p[1]!=j[1]||!eq(p,j,l)||p[l]) continue;
    for(int t=l;t<33;t++) if(p[t]) return 0;                       /* the whole 33-byte slot is the name (zero padded) */
    if(islead(p[-1])) return 0;
    const char*e=FAME[k]; int n=slen(e); if(n>32) return 0; for(int t=0;t<33;t++) p[t]=(t<n)?(u8)e[t]:0; nfam++; return 33; }
  return famconv2(p); }
/* family tree names in old saves: full-width player surname + kanji given name ("Ｌａｖ知可子") -> "Lav Chikako" */
static u32 nfname;
static int famname(u8*p){
  int l=0; while(l<24&&p[l]==0x82&&((p[l+1]>=0x60&&p[l+1]<=0x79)||(p[l+1]>=0x81&&p[l+1]<=0x9a))) l+=2;
  if(l<6) return 0;
  int pre=0; for(int i=0;i<fwn&&!pre;i++) if(fwl[i]>=l&&eq(fwk[i],p,l)) pre=1; if(!pre) return 0;
  int g=0; while(g<10&&p[l+g]){ u8 a=p[l+g],b=p[l+g+1]; if(!((a>=0x88&&a<=0x9f)||(a>=0xe0&&a<=0xea)||(a==0x82&&b>=0x9f&&b<=0xf1))) return 0; g+=2; }
  if(g<2||p[l+g]) return 0;
  u8 key[18]; for(int t=0;t<17;t++) key[t]=(t<g)?p[l+t]:0; int gl=0; const u8*gr=kmap(key,2,&gl); if(!gr) return 0;
  char a[40],b[40]; int la=fwfoldf(p,l,a), lb=romaji(gr,gl,b); if(la<=0||lb<=0||la+1+lb>32) return 0;
  int k=0; for(int t=0;t<la;t++) p[k++]=(u8)a[t]; p[k++]=' '; for(int t=0;t<lb;t++) p[k++]=(u8)b[t]; p[k]=0;
  for(int t=k+1;t<l+g;t++) p[t]=0; nfname++; return k; }
/* old-save horse records: ff ff 01 00 ff ff 01 00 [breeder 13][jockey 33][trainer 33] then race lines (62 00 ?? 02 .. [jockey 16]) every 0x30 */
static u32 nhrec;
static int tfield(u8*f,int L){ int n=0; while(n<L-1&&f[n]){ if(!islead(f[n])) return 0; u8 t=f[n+1]; if(t<0x40||t==0x7f||t>0xfc) return 0; n+=2; } if(n<2||n>=L) return 0;
  const char*v=rget(f,n); if(!v){ u8 k[13]; if(n<=12){ clean(k,f,n,13); FREC*fe=ffind(k); if(fe){ char o[16]; fstr(fe->e,12,o); putf(f,L,o,0); return 1; } } return 0; }
  int m=0; char o[40]; while(v[m]&&m<L-1&&m<39){ o[m]=v[m]; m++; } o[m]=0; putf(f,L,o,0); return 1; }
static int hrecconv(u8*p){
  if(!(p[0]==0xff&&p[1]==0xff&&p[2]==1&&p[3]==0&&p[4]==0xff&&p[5]==0xff&&p[6]==1&&p[7]==0)) return 0;
  int d=0; d+=tfield(p+8,13); d+=tfield(p+0x15,33); d+=tfield(p+0x36,33);
  for(int k=0;k<80;k++){ u8*q=p+0x58+k*0x30; if(!(q[0]==0x62&&q[1]==0&&q[3]==0x02)) break; d+=tfield(q+8,16); }
  if(d) nhrec+=d; return d; }
/* kana names stored with their reading just before the field: player-typed hiragana club name (reading 18 before)
   and club names in the club ranking records (reading 22 before) -> club list / dictionary words / romaji */
static u32 nhira;
static int kcode(const u8*q){ u8 a=q[0],b=q[1];
  if(a==0x82&&b>=0x9f&&b<=0xf1) return b-0x9e;
  if(a==0x83&&b>=0x40&&b<=0x96&&b!=0x7f) return b<0x80?b-0x3f:b-0x40;
  if(a==0x81&&b==0x5b) return 0xfe; return 0; }
static int hiraconv(u8*p){
  int n=0; u8 c[24]; int c0; while(n<20&&(c0=kcode(p+2*n))){ c[n]=(u8)c0; n++; }
  if(n<2||p[2*n]) return 0;
  int z=0; while(z<32&&2*n+z<48&&!p[2*n+z]) z++; if(z<6) return 0;
  int ok=0;
  for(int R=18;R<=22&&!ok;R+=4){ if(p-R<nrb) continue; const u8*r=p-R; int rl=0; while(rl<R&&r[rl]) rl++; if(rl!=n||!eq(r,c,n)) continue; int bad=0; for(int i=rl;i<R;i++) if(r[i]) bad=1; if(!bad) ok=1; }
  if(!ok) return 0;
  char o[48]; int l=0;
  if(2*n<=13){ u8 ck[16]; for(int t=0;t<16;t++) ck[t]=(t<2*n)?p[t]:0; CREC*ce=cfind(ck); if(ce){ while(l<13&&ce->e[l]){ o[l]=(char)ce->e[l]; l++; } o[l]=0; } }
  if(l<=0) l=dsplit(c,n,o,30); if(l<=0){ l=romw(c,n,o); if(l<=0) return 0; }
  int L=2*n+z; if(L>32) L=32; if(l>=L) return 0; putf(p,L,o,0); nhira++; return 1; }
/* "Lavさん" (player name + honorific, kept in old saves for the secretaries): drop the さん */
static u32 nsan;
static int sanstrip(u8*p){ /* p at さん, followed by NUL */
  u8*q=p; int n=0;
  for(;;){ if(n>16) return 0;
    u8 c=q[-1];
    if(q[-2]==0x82&&((c>=0x60&&c<=0x79)||(c>=0x81&&c<=0x9a))){ q-=2; n++; continue; }
    if((c>='A'&&c<='Z')||(c>='a'&&c<='z')||c=='.'||c==' '){ if(islead(q[-2])) break; q--; n++; continue; }
    if(q[-2]==0x81&&c==0x44){ q-=2; n++; continue; }   /* full-width . */
    break; }
  if(n<2||q[-1]!=0) return 0;
  p[0]=0; p[1]=0; p[2]=0; p[3]=0; nsan++; return 1; }
#ifdef NDUMP
/* report mode: WP10_EN_reportnow.txt -> next pass lists people-like records that stayed Japanese (WP10_EN_report.txt) */
static int nrep; static u8*rbuf; static u32 rlen; static u32 rhash[8192]; static u32 rcnt;
static int hasjp(const u8*f,int L){ for(int i=0;i<L&&f[i];i++) if(f[i]>=0x81) return 1; return 0; }
static void repadd(const char*tag,const u8*p,int before,int len){
  if(!rbuf||rlen>(4u<<20)-400) return;
  u32 h=fnvn(p,len); for(u32 i=h&8191,t=0;t<64;t++,i=(i+1)&8191){ if(rhash[i]==h) return; if(!rhash[i]){ rhash[i]=h; break; } }
  int k=0; while(tag[k]) rbuf[rlen++]=tag[k++]; rbuf[rlen++]='\t';
  static const char hx[]="0123456789abcdef";
  for(int i=-before;i<len;i++){ rbuf[rlen++]=hx[p[i]>>4]; rbuf[rlen++]=hx[p[i]&15]; if(i==-1) rbuf[rlen++]='|'; }
  rbuf[rlen++]='\r'; rbuf[rlen++]='\n'; rcnt++; }
#define REPORT(tag,p,b,l) do{ if(nrep) repadd(tag,p,b,l); }while(0)
#else
#define REPORT(tag,p,b,l) do{}while(0)
#endif
__attribute__((noinline)) static void nscanreg(u8*rb,u64 rs){
  if(rs<0x110) return; u8*end=rb+rs-0xd0;
  nrb=rb; for(u8*p=rb+16;p<end;p++){
    if(!nphase&&ltab&&p[0]&&p[0]<=0x56&&p[15]==0&&((p[-4]==0xa0&&p[-3]==0x0f&&p[-2]==0&&p[-1]==0)||(p[16]==0xff&&p[17]==0xff&&p[18]==1&&p[19]==0))){
      LREC*e=lfind(p); if(e){ cpy(p,e->e,16); nlt++; p+=15; continue; } }   /* sire-line table (Line column) */
    if(nphase&&!nmapd&&p[0]==0xff&&p[1]==0xff&&p[2]==1&&p[3]==0&&p[4]==0xff&&p[8]>=0x81){ if(hrecconv(p)){ p+=7; continue; } }
    if(!islead(p[0])) continue;
    if(!nmapd&&p[0]==0x83&&p[-1]==0x07&&p[-3]==0x07&&p>=(u8*)base&&p<(u8*)base+imgsz&&recconv(p)){ p+=63; continue; }
    if(nmapd){ if(p[0]==0x83&&p[-1]==0x07&&p[-3]==0x07&&recconv(p)){ p+=63; continue; } if(p[0]==0x83){ int l=famconv(p); if(l) p+=l-1; } else if(p[0]==0x82&&p[-1]==0&&fwn){ int l=famname(p); if(l) p+=l-1; } continue; }
    if(nphase){ if(p[47]==0&&p[95]==0&&p[143]==0&&p[0]==0x83){ if(hconv(p)){ p+=0xc7; continue; } }
      if(p[0]==0x83&&p[47]==0&&p[95]==0&&p[48]==0x83){ if(pedconv(p)){ p+=95; continue; } }
      if(p[0]==0x83&&p[-7]==0x76&&p[-6]==0x09){ if(lconv(p)){ p+=35; continue; } }
      if(p[0]==0x82&&p[1]==0xb3&&p[2]==0x82&&p[3]==0xf1&&p[4]==0){ if(sanstrip(p)){ p+=3; continue; } }
      if(fwn&&p[0]==0x82&&p[-1]==0){ int l=fwcopy(p); if(l){ p+=l-1; nfold++; continue; } }
      if((p[0]==0x82)&&p[-1]==0&&(p[1]>=0x60&&p[1]<=0x9a)){ int l=0; while(l<32&&(p[l]==0x82||p[l]==0x81)&&p[l+1]) l+=2;
        if(l>=6&&p[l]==0&&sjt(p,l+1)==l){ char o[40]; int n=fwfoldf(p,l,o); int lt=0; for(int i=0;i<n;i++) if((o[i]>='A'&&o[i]<='Z')||(o[i]>='a'&&o[i]<='z')) lt++;
          int pre=0; for(int i=0;i<fwn&&!pre;i++) if(fwl[i]>=l&&eq(fwk[i],p,l)) pre=1;
          if(n>0&&lt>=3&&pre){ u8 t[34]; for(int j=0;j<l;j++) t[j]=(j<n)?(u8)o[j]:0; cpy(p,t,l); nfold++; p+=l-1; continue; } } }
      if(p[0]==0x83){ int l=famconv(p); if(l){ p+=l-1; continue; } }
      if((p[0]==0x82||p[0]==0x83)&&p[-1]==0&&kcode(p)){ if(hiraconv(p)){ p+=3; continue; } }
      if(p[0]==0x82&&p[-1]==0&&fwn){ int l=famname(p); if(l){ p+=l-1; continue; } }
      continue; }
    if(p[12]==0 && p[13] && (p[13]<=0x56||p[13]==0xfe)){ if(fconv(p)){ p+=29; continue; }
#ifdef NDUMP
      if(nrep&&sjt(p,13)>0&&hasjp(p,13)&&rdf(p+13,15)>1) REPORT("farm",p,4,29);
#endif
    }
    if(p[-1]!=0xff&&p[16]==0&&p[33]==0&&repconv(p)){ p+=51; continue; }
    if(p[-1]==0xff&&p[-2]==0xff){ if(oconv(p)){ p+=51; }
#ifdef NDUMP
      else if(nrep&&sjt(p,17)>0&&hasjp(p,17)) REPORT("own",p,4,68);
#endif
      continue; }
    if(p[16]|p[33]) continue;
    u8 c=p[34]; if(!((c>=1&&c<=0x56)||c==0xfe)) continue;
    if(nconv(p)) p+=51;
#ifdef NDUMP
    else if(nrep&&sjt(p,17)>0&&hasjp(p,17)&&p[34]&&rdfield(p+34)>0) REPORT("ppl",p,8,52);
#endif
    } }
static int nscan_one(u8*rb,u64 rs){
  __try { nscanreg(rb,rs); } __except(1) { return 0; }
  return 1; }

#ifdef NDUMP
__declspec(dllimport) BOOL WINAPI DeleteFileA(const char*);
static u8 dpb[1024]; static u8*dpp[32]; static u32 dpl[32]; static int dpn;
static __attribute__((noinline)) int dhas(u8*rb,u64 rs){
  for(int k=0;k<dpn;k++){ const u8*pt=dpp[k]; u32 l=dpl[k];
    for(u64 i=0;i+l<=rs;i++) if(rb[i]==pt[0]&&eq(rb+i,pt,l)) return 1; }
  return 0; }
static int dhas_s(u8*rb,u64 rs){ __try { return dhas(rb,rs); } __except(1) { return 0; } }
static __attribute__((noinline)) void dwr(HANDLE h,u8*rb,u64 rs){ DWORD w; u64 hd[2]={(u64)rb,rs}; WriteFile(h,hd,16,&w,0);
  for(u64 o=0;o<rs;o+=0x100000){ u64 n=rs-o; if(n>0x100000)n=0x100000; WriteFile(h,rb+o,(DWORD)n,&w,0);} }
static void dwr_s(HANDLE h,u8*rb,u64 rs){ __try { dwr(h,rb,rs);} __except(1){} }
static __attribute__((noinline)) u64 dfind1(u8*rb,u64 rs,u64 from){
  for(u64 i=from;i<rs;i++) for(int k=0;k<dpn;k++){ const u8*pt=dpp[k]; u32 l=dpl[k]; if(i+l<=rs&&rb[i]==pt[0]&&eq(rb+i,pt,l)) return i; }
  return ~0ull; }
static u64 dfind1_s(u8*rb,u64 rs,u64 from){ __try { return dfind1(rb,rs,from); } __except(1) { return ~0ull; } }
/* WP10_EN_dumpnow.txt = one SJIS pattern per line; dumps every private RW region (<=256MB) holding one of them */
static void ndump(void){
  char fn[600]; path(fn,"WP10_EN_dumpnow.txt"); HANDLE f=CreateFileA(fn,0x80000000,1,0,3,0x80,0); if(f==(HANDLE)-1) return;
  DWORD r=0; ReadFile(f,dpb,1000,&r,0); CloseHandle(f); DeleteFileA(fn); dpb[r]=0; dpn=0;
  for(u32 i=0;i<r&&dpn<32;){ while(i<r&&(dpb[i]=='\n'||dpb[i]=='\r')) dpb[i++]=0; if(i>=r) break; u32 s0=i; while(i<r&&dpb[i]!='\n'&&dpb[i]!='\r') i++; if(i-s0>=2){ dpp[dpn]=dpb+s0; dpl[dpn]=i-s0; dpn++; } }
  if(!dpn) return;
  path(fn,"WP10_EN_dump.bin"); HANDLE h=CreateFileA(fn,0x40000000,0,0,2,0x80,0); if(h==(HANDLE)-1) return;
  u8 mbi[48]; u8*p=(u8*)0x10000; u32 nr=0; u64 tot=0;
  while((u64)p<0x7ffffffe0000ull){ if(!VirtualQuery(p,mbi,48)) break;
    u8*rb=*(u8**)mbi; u64 rs=*(u64*)(mbi+24); u32 st=*(u32*)(mbi+32), pr=*(u32*)(mbi+36), ty=*(u32*)(mbi+40);
    if(st==0x1000 && (pr==4||pr==2||pr==0x40||pr==0x20) && (ty==0x20000||ty==0x40000||(rb>=base&&rb<base+imgsz)) && rs>=4096 && rs<=(1536ull<<20) && (rb+rs<=nblob || rb>=nblob+nblen) && dhas_s(rb,rs)){ dwr_s(h,rb,rs); nr++; tot+=rs; }
    else if(st==0x1000 && pr==4 && ty==0x20000 && rs>(1536ull<<20)){ u64 o=0; int w=0; while(w<64){ u64 hit=dfind1_s(rb,rs,o); if(hit==~0ull) break;
        u64 a0=hit>4096?hit-4096:0; u64 l0=8192; if(a0+l0>rs) l0=rs-a0; dwr_s(h,rb+a0,l0); nr++; tot+=l0; w++; o=hit+4096; } }
    p=rb+rs; if(!rs) break; }
  CloseHandle(h);
  { path(fn,"WP10_EN_regions.txt"); HANDLE r2=CreateFileA(fn,0x40000000,0,0,2,0x80,0); if(r2!=(HANDLE)-1){ HANDLE ol=lf; lf=r2; p=(u8*)0x10000;
      while((u64)p<0x7ffffffe0000ull){ if(!VirtualQuery(p,mbi,48)) break; u8*rb=*(u8**)mbi; u64 rs=*(u64*)(mbi+24); u32 st=*(u32*)(mbi+32), pr=*(u32*)(mbi+36), ty=*(u32*)(mbi+40);
        if(st==0x1000&&rs>=0x100000){ lgh((u64)rb,12); lg(" "); lgh(rs,10); lg(" "); lgh(pr,3); lg(" "); lgh(ty,8); lg("\r\n"); }
        p=rb+rs; if(!rs) break; }
      lf=ol; CloseHandle(r2); } }
  lg("names dump patterns "); lgh(dpn,2); lg(" regions "); lgh(nr,4); lg(" MB "); lgh(tot>>20,4); lg("\r\n"); }
#endif
static DWORD WINAPI nameworker(void*x){
  Sleep(20000);
  for(;;){
    u32 h0=nhit,r0=nrom,o0=nown,c0=nclub,f0=nfarm,y0=nhist,l0=nline,w0=nfold,t0=nlt; u8 mbi[48]; u64 scanned=0;
    for(nphase=0;nphase<2;nphase++){ u8*p=(u8*)0x10000;   /* phase 0: people/owners/farms, phase 1: history (uses names found in phase 0) */
    while((u64)p<0x7ffffffe0000ull){
      if(!VirtualQuery(p,mbi,48)) break;
      u8*rb=*(u8**)mbi; u64 rs=*(u64*)(mbi+24); u32 st=*(u32*)(mbi+32), pr=*(u32*)(mbi+36), ty=*(u32*)(mbi+40);
      nmapd=(ty==0x40000)||(ty==0x1000000&&!(rb>=base&&rb<base+imgsz));
      if(st==0x1000 && pr==4 && (ty==0x20000 || (nphase&&nmapd) || (rb>=base && rb<base+imgsz)) && rs>=128 && (rb+rs<=nblob || rb>=nblob+nblen)){
        nscan_one(rb,rs); scanned+=rs; SwitchToThread(); }
      p=rb+rs; if(!rs) break; } }
    nphase=0; npass++;
    if(nhit!=h0||nrom!=r0||nown!=o0||nclub!=c0||nfarm!=f0||nhist!=y0||nline!=l0||nfold!=w0||nlt!=t0||npass==1){ lg("names pass "); lgh(npass,4); lg(" MB "); lgh(scanned>>20,4);
      lg(" table "); lgh(nhit-h0,5); lg(" romaji "); lgh(nrom-r0,5); lg(" owners "); lgh(nown-o0,5); lg(" clubs "); lgh(nclub-c0,4); lg(" farms "); lgh(nfarm-f0,4); lg(" history "); lgh(nhist-y0,4); lg(" lines "); lgh(nline-l0,4); lg(" linetab "); lgh(nlt-t0,4); lg(" fw "); lgh(nfold-w0,3); lg(" custom "); lgh(ncust,4); lg(" san "); lgh(nsan,3); lg(" fam "); lgh(nfam,3); lg(" fname "); lgh(nfname,3); lg(" hrec "); lgh(nhrec,4); lg(" hira "); lgh(nhira,3); lg(" rec "); lgh(nrec,3); lg(" rep "); lgh(nrep2,3); lg("\r\n"); }
#ifdef NDUMP
    if(nrep){ char fn[600]; path(fn,"WP10_EN_report.txt"); HANDLE h=CreateFileA(fn,0x40000000,0,0,2,0x80,0); if(h!=(HANDLE)-1){ DWORD w; WriteFile(h,rbuf,rlen,&w,0); CloseHandle(h); } lg("names report lines "); lgh(rcnt,5); lg("\r\n"); nrep=0; }
    for(int z=0;z<15;z++){ Sleep(1000); ndump();
      { char fn[600]; path(fn,"WP10_EN_reportnow.txt"); HANDLE f=CreateFileA(fn,0x80000000,1,0,3,0x80,0); if(f!=(HANDLE)-1){ CloseHandle(f); DeleteFileA(fn);
          if(!rbuf) rbuf=(u8*)VirtualAlloc(0,4u<<20,0x3000,4); rlen=0; rcnt=0; for(int i=0;i<8192;i++) rhash[i]=0; if(rbuf) nrep=1; break; } } }
#else
    Sleep(15000);
#endif
    } }
static void names_init(void){
  char fn[600]; path(fn,"WP10_EN_names.bin"); HANDLE h=CreateFileA(fn,0x80000000,1,0,3,0x80,0);
  if(h==(HANDLE)-1){ lg("old-save names: off (no WP10_EN_names.bin)\r\n"); return; }
  u8 hd[36]; DWORD r; if(!ReadFile(h,hd,36,&r,0)||r!=36||!eq(hd,(const u8*)"WPN6",4)){ CloseHandle(h); lg("old-save names: bad file\r\n"); return; }
  u32 c1=*(u32*)(hd+4),c2=*(u32*)(hd+8),c3=*(u32*)(hd+12),c4=*(u32*)(hd+16),c5=*(u32*)(hd+20),c6=*(u32*)(hd+24),c7=*(u32*)(hd+28),c8=*(u32*)(hd+32);
  u64 tot=(u64)c1*sizeof(NREC)+(u64)c2*sizeof(KREC)+(u64)c3*sizeof(DREC)+(u64)c4*sizeof(FREC)+(u64)c5*sizeof(CREC)+(u64)c6*sizeof(HREC)+(u64)c7*sizeof(LREC)+(u64)c8*sizeof(DREC);
  if(tot>(64ull<<20)){ CloseHandle(h); lg("old-save names: bad sizes\r\n"); return; }
  nblob=(u8*)VirtualAlloc(0,tot+16,0x3000,4); nblen=tot+16;
  if(!nblob||!ReadFile(h,nblob,(DWORD)tot,&r,0)||r!=tot){ CloseHandle(h); lg("old-save names: read failed\r\n"); return; }
  CloseHandle(h);
  u8*q=nblob; ntab=(NREC*)q; nn=c1; q+=(u64)c1*sizeof(NREC); ktab=(KREC*)q; kn=c2; q+=(u64)c2*sizeof(KREC);
  dtab=(DREC*)q; dn=c3; q+=(u64)c3*sizeof(DREC); ftab=(FREC*)q; fn_=c4; q+=(u64)c4*sizeof(FREC); ctab_=(CREC*)q; cn_=c5; q+=(u64)c5*sizeof(CREC); htab=(HREC*)q; hn_=c6; q+=(u64)c6*sizeof(HREC); ltab=(LREC*)q; ln_=c7; q+=(u64)c7*sizeof(LREC); xtab=(DREC*)q; xn_=c8;
  rmap=(RENT*)VirtualAlloc(0,sizeof(RENT)*RMN,0x3000,4);
  lg("old-save names: people "); lgh(nn,5); lg(" kanji "); lgh(kn,5); lg(" words "); lgh(dn,5); lg(" farms "); lgh(fn_,3); lg(" horses "); lgh(hn_,5); lg("\r\n");
  CreateThread(0,0,nameworker,0,0,0); }

/* dialogue string vars / formatted race subtitles left in Japanese by old saves:
   hiragana player name (+さん) -> romaji; katakana name -> real-horse English, else romaji; "5100万" -> "$320,755" */
static int kanacodes(const u8*s,int n,u8*c,int*hira){ int k=0,h=0,kt=0; for(int i=0;i<n;i+=2){ u8 a=s[i],b=s[i+1];
    if(a==0x82&&b>=0x9f&&b<=0xf1){ c[k++]=(u8)(b-0x9e); h=1; }
    else if(a==0x83&&b>=0x40&&b<=0x96&&b!=0x7f){ c[k++]=(u8)(b<0x80?b-0x3f:b-0x40); kt=1; }
    else if(a==0x81&&b==0x5b){ c[k++]=0xfe; } else return -1; if(k>22) return -1; }
  *hira=h&&!kt; return k; }
static int kana2en(const u8*s,int n,char*o){ u8 c[24]; int hira=0; int k=kanacodes(s,n,c,&hira); if(k<2) return 0;
  if(!hira&&htab){ u8 key[20]; for(int i=0;i<20;i++) key[i]=(i<k)?c[i]:0; if(k<=20){ HREC*e=hfind(key); if(e){ int l=0; while(l<31&&e->e[l]){ o[l]=(char)e->e[l]; l++; } o[l]=0; if(l) return l; } } }
  int l=romaji(c,k,o); return (l>0&&l<40)?l:0; }
#ifndef T9
static int dlgkana(u8*s){
  int n=0; while(n<62&&s[n]) n++; if(n<4||s[n]) return 0;
  /* money in 10k/100M yen units */
  { i64 y; int neg,ey,un,dol; if(parsemoney(s,n,&y,&neg,&ey,&un,&dol)&&un&&!dol){ char o[48]; int L=usd(y,neg,o,30); for(int i=0;i<=L;i++) s[i]=(u8)o[i]; return 1; } }
  int m=n; if(m>=4&&s[m-4]==0x82&&s[m-3]==0xb3&&s[m-2]==0x82&&s[m-1]==0xf1) m-=4;   /* さん */
  if(m<4||(m&1)) return 0; char o[48]; int l=kana2en(s,m,o); if(l<=0||l>60) return 0;
  for(int i=0;i<=l;i++) s[i]=(u8)o[i]; return 1; }
#endif
/* katakana runs in a formatted line (lead pony name) -> English, only when it gets shorter; returns new length */
static int dlgkatarun(u8*s,int n){ u8 t[160]; int k=0,i=0,did=0;
  while(i<n){ int j=i; while(j+1<n&&((s[j]==0x83&&s[j+1]>=0x40&&s[j+1]<=0x96)||(s[j]==0x81&&s[j+1]==0x5b))) j+=2;
    if(j-i>=4){ char o[48]; int l=kana2en(s+i,j-i,o); if(l>0&&l<=j-i){ for(int q=0;q<l;q++) t[k++]=(u8)o[q]; i=j; did=1; continue; } }
    if(j>i){ while(i<j) t[k++]=s[i++]; continue; }
    t[k++]=s[i++]; if(k>150) return 0; }
  if(!did) return 0; for(int q=0;q<k;q++) s[q]=t[q]; s[k]=0; return k; }

/* race record table (exe .data, filled from the save): [u16 year][u16 year][holder 32][holder 32], katakana from before the patch */
static int recfield(u8*f){ int n=0; while(n<32&&f[n]) n+=2; if(n<4||n>30||f[n]) return 0; for(int i=n;i<32;i++) if(f[i]) return 0;
  for(int i=0;i<n;i+=2){ u8 a=f[i],b=f[i+1]; if(!((a==0x83&&b>=0x40&&b<=0x96)||(a==0x81&&b==0x5b))) return 0; }
  char o[48]; int l=kana2en(f,n,o); if(l<=0||l>31) return 0; for(int i=0;i<32;i++) f[i]=(u8)(i<l?o[i]:0); return 1; }
static int recconv(u8*p){ u16 y1=(u16)(p[-4]|p[-3]<<8), y2=(u16)(p[-2]|p[-1]<<8);
  if(y1<1950||y1>2100||y2<1950||y2>2100) return 0;
  int d=recfield(p); if(p[32]==0x83) d+=recfield(p+32); if(d) nrec+=d; return d; }
