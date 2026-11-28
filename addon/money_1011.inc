static int dlgkana(u8*s); static int dlgkatarun(u8*s,int n);
/* ---- money: yen -> US dollars at a fixed 159 JPY = $1 (whole dollars) ----
   The game builds money text with its own sprintf (core 0x5695b0) using JP units 億(1e8) 万(1e4) 円.
   We let it format as normal, then read back what it wrote and rewrite it as "$1,234,567".
   Some builders write the amount in pieces into the same buffer (億 then 万 then 円): consecutive pieces
   are merged into one run. Two builders that assemble pieces in other buffers are replaced outright. */
typedef long long i64;
void* _AddressOfReturnAddress(void);
typedef int(*COREF)(u8**,void*,const u8*,void*); static COREF ocore;
static u8*mr_start,*mr_end; static i64 mr_yen; static int mr_open,mr_neg,mr_orig,mr_pad; static volatile long mlogn;
static int isunit(const u8*s){ return (s[0]==0x89&&(s[1]==0xad||s[1]==0x7e))||(s[0]==0x96&&s[1]==0x9c); }
static i64 unitmul(const u8*s){ return s[1]==0xad?100000000LL:(s[0]==0x96?10000LL:1LL); }
/* format string is money-only: % specs, digits, spaces, , - + and the units; at least one unit */
static int moneyfmt(const u8*f){ int u=0;
  for(const u8*p=f;*p;){ if(isunit(p)){u=1;p+=2;continue;} u8 c=*p;
    if(c==0x81&&p[1]==0x40){p+=2;continue;}
    if(c=='%'||(c>='0'&&c<='9')||c==' '||c==','||c=='-'||c=='+'||c=='d'||c=='l'||c=='k'||c=='K'||c=='s'||c=='u'){p++;continue;}
    return 0; }
  return u; }
static int fmtpad(const u8*f){ for(const u8*p=f;*p;p++) if(*p=='%'&&p[1]>='1'&&p[1]<='9') return 1; return 0; }
/* parse game output; returns 0 if not parseable. *yen gets the amount, *endsyen=1 if it ends with 円, *unit=1 if it had a unit */
static int parsemoney(const u8*s,int n,i64*yen,int*neg,int*endsyen,int*unit,int*dollar){
  i64 tot=0,num=0; int have=0,i=0; *neg=0;*endsyen=0;*unit=0;*dollar=0;
  while(i<n){ u8 c=s[i];
    if(c>='0'&&c<='9'){ num=num*10+(c-'0'); have=1; i++; continue; }
    if(c==','||c==' '){ i++; continue; }
    if(c==0x81&&i+1<n&&s[i+1]==0x40){ i+=2; continue; }
    if(c=='-'){ *neg=1; i++; continue; }
    if(c=='+'){ i++; continue; }
    if(c=='$'){ *dollar=1; i++; continue; }
    if(i+1<n&&isunit(s+i)){ i64 m=unitmul(s+i); if(have) tot+=num*m; num=0; have=0; *unit=1; *endsyen=(m==1); i+=2; continue; }
    return 0; }
  if(have){ tot+=num; *endsyen=0; }
  *yen=tot; return 1; }
static int usd(i64 yen,int neg,char*o,int maxl){ /* returns length */
  i64 d=(yen*10+795)/1590; char t[40]; int n=0;
  if(d>=1000000000LL && maxl<15){ i64 c=(d+5000000)/10000000; /* $X.XXB */ n=0; t[n++]='$'; i64 w=c/100; char r[24];int k=0; do{r[k++]='0'+w%10;w/=10;}while(w); while(k)t[n++]=r[--k]; t[n++]='.'; t[n++]='0'+(c/10)%10; t[n++]='0'+c%10; t[n++]='B'; }
  else if(d>=1000000LL && maxl<12){ i64 c=(d+5000)/10000; t[n++]='$'; i64 w=c/100; char r[24];int k=0; do{r[k++]='0'+w%10;w/=10;}while(w); while(k)t[n++]=r[--k]; t[n++]='.'; t[n++]='0'+(c/10)%10; t[n++]='0'+c%10; t[n++]='M'; }
  else { char r[32]; int k=0,g=0; do{ if(g==3){r[k++]=',';g=0;} r[k++]='0'+d%10; d/=10; g++; }while(d); t[n++]='$'; while(k)t[n++]=r[--k]; }
  int j=0; if(neg&&yen) o[j++]='-'; for(int i=0;i<n;i++)o[j++]=t[i]; o[j]=0; return j; }
static void mlog(const char*what,u64 ra,const u8*a,int an,const char*b){
  if(mlogn>=400) return; mlogn++; char t[80]; int i=0;
  lg("MONEY ");lg(what);lg(" from ");lgh(ra>(u64)base&&ra<(u64)base+0x8000000?ra-(u64)base:0,8);lg(" \"");
  for(int k=0;k<an&&i<70;k++){ u8 c=a[k]; if(c>=0x20&&c<0x7f) t[i++]=c; else if(c==0x89&&k+1<an&&a[k+1]==0xad){t[i++]='O';k++;} else if(c==0x96&&k+1<an&&a[k+1]==0x9c){t[i++]='M';k++;} else if(c==0x89&&k+1<an&&a[k+1]==0x7e){t[i++]='Y';k++;} else t[i++]='?'; }
  t[i]=0; lg(t); lg("\" -> \""); lg(b); lg("\"\r\n"); }
/* pieces of the in-buffer builders (0x8e640 family etc.) may be plain numbers or a bare 円 */
static int inbuilder(u64 r){ return (r>=0x8e4e0&&r<0x8eee0)||(r>=0xa9b060&&r<0xa9b960)||(r>=0xc472a0&&r<0xc477a0)||(r>=0xbde3b0&&r<0xbeb9b0)||(r>=0x877e0&&r<0x8a6e0); }
static int hcore(u8**ctx,void*putc,const u8*fmt,void*va){
  u8*start=*ctx; int r=ocore(ctx,putc,fmt,va);
  if(putc!=(void*)(base+0x569a20)||!fmt) return r;
  { static const u8 lp[]="Lead pony"; for(const u8*q=fmt;*q;q++) if(*q=='L'&&eq(q,lp,9)){ u8*e=*ctx; int n2=(int)(e-start); if(n2>0&&n2<120){ int nl=dlgkatarun(start,n2); if(nl>0) *ctx=start+nl; } break; } }
  u64 ra=0; { void**rp=(void**)_AddressOfReturnAddress(); if((u8*)rp[0]==base+0x569591) ra=(u64)rp[0x40/8]; }
  u64 rr=ra?ra-(u64)base:0;
  { static u64 seen[400]; static int ns; u64 fr=(u64)fmt-(u64)base;
    if(ns<400 && ra){ int dg=0,n2=(int)(*ctx-start); for(int i=0;i<n2;i++) if(start[i]>='0'&&start[i]<='9') dg++;
      if(dg && dg==n2){ int f=0; for(int i=0;i<ns;i++) if(seen[i]==rr) f=1; if(!f){ seen[ns++]=rr; lg("NUMFMT from ");lgh(rr,8);lg(" fr ");lgh(fr,8);lg(" fmt \"");
        char t[24];int i=0; for(;i<20&&fmt[i];i++) t[i]=(fmt[i]>=0x20&&fmt[i]<0x7f)?fmt[i]:'?'; t[i]=0; lg(t); lg("\"\r\n"); } } } }
  /* race info prize row (0x74e670): 5 prizes in 10,000-yen units printed with "%d", joined, then "万円" appended
     (that label is blanked in WP10_EN.bin). Show each as a compact dollar amount. */
  if(rr==0x74e96e){ u8*e=*ctx; int n2=(int)(e-start); i64 v=0; int ok=n2>0&&n2<12;
    for(int i=0;i<n2&&ok;i++){ if(start[i]<'0'||start[i]>'9') ok=0; else v=v*10+(start[i]-'0'); }
    if(ok){ i64 d=(v*10000*10+795)/1590; char o[24]; int k=0; o[k++]='$'; char r[24]; int m=0; char suf=0; i64 w=d, f=-1;
      if(d>=1000000){ i64 c=(d+5000)/10000; w=c/100; f=c%100; suf='M'; if(w>=100) f=-1; else if(w>=10) f=f/10+100; }
      else if(d>=10000){ w=(d+500)/1000; suf='K'; }
      do{ r[m++]='0'+w%10; w/=10; }while(w); while(m) o[k++]=r[--m];
      if(f>=100){ o[k++]='.'; o[k++]='0'+(f-100); } else if(f>=0){ o[k++]='.'; o[k++]='0'+f/10; o[k++]='0'+f%10; }
      if(suf) o[k++]=suf; o[k]=0;
      for(int i=0;i<k;i++) start[i]=o[i]; start[k]=0; *ctx=start+k; mlog("prize",ra,(const u8*)"",0,o); }
    return r; }
  int mf=moneyfmt(fmt);
  int cont=(mr_open && start==mr_end && (mf || (rr && inbuilder(rr))));
  if(!mf && !cont) { if(start!=mr_end) mr_open=0; return r; }
  u8*end=*ctx; int n=(int)(end-start); if(n<=0||n>60) return r;
  i64 y; int neg,ey,un,dol; if(!parsemoney(start,n,&y,&neg,&ey,&un,&dol)) return r;
  if(dol){ /* already dollars (e.g. "%s円" around a converted amount): drop the yen sign */
    u8*e=end; if(e-start>=2&&e[-2]==0x89&&e[-1]==0x7e){ *ctx=e-2; } mr_open=0; return r; }
  if(!un && !cont) return r;
  { int dg=0; for(int i=0;i<n;i++) if(start[i]>='0'&&start[i]<='9') dg=1; if(!dg && !cont) return r; }
  u8 orig[64]; for(int i=0;i<n;i++)orig[i]=start[i];
  u8*w; if(cont){ mr_yen+=y; mr_orig+=n; if(neg)mr_neg=1; w=mr_start; }
  else { mr_start=start; mr_yen=y; mr_neg=neg; mr_orig=n; mr_pad=fmtpad(fmt); w=start; }
  char o[48]; int L=usd(mr_yen,mr_neg,o,mr_orig+4);
  int pad=(mr_pad && L<mr_orig)?mr_orig-L:0; if(pad>12)pad=12;
  u8*q=w; for(int i=0;i<pad;i++)*q++=' '; for(int i=0;i<L;i++)*q++=o[i];
  *ctx=q; mr_end=q; mr_open=!ey && un; 
  mlog(cont?"cont":"fmt",ra,orig,n,o);
  return r; }
static u8* h2b7d0(u8*out,u32 man){ char o[48]; int L=usd((i64)man*10000,0,o,20); for(int i=0;i<=L;i++)out[i]=o[i]; mlog("2b7d0",(u64)__builtin_return_address(0),(const u8*)"",0,o); return out; }
static u8* h18b080(i64 man){ u8*b=base+0x402de70; char o[48]; i64 v=man; int neg=0; if(v<0){neg=1;v=-v;} if(v>99999999)v=99999999;
  int L=usd(v*10000,neg,o,15); for(int i=0;i<=L&&i<15;i++)b[i]=o[i]; b[15]=0; mlog("18b080",(u64)__builtin_return_address(0),(const u8*)"",0,o); return b; }

/* dialogue numbers (WMM message vars). The engine formats a number var with sprintf("%y") at 0x3322c.
   Money amounts in dialogue are stored in units of 10,000 yen; our WMM text puts a '$' right before such vars.
   If the character just written before the var is '$', show the real dollar amount with commas. */
typedef int(*SPF)(char*,const char*,...);
static void hnum(u8*rd,int v,char*buf){
  u8*o=*(u8**)(rd+0xe28); u32 n=*(u32*)(rd+0xe08);
  if(n>0 && o && o[-1]=='$'){
    i64 y=(i64)v*10000; int neg=0; if(y<0){neg=1;y=-y;}
    i64 d=(y*2+159)/318; char r[32]; int k=0,g=0; do{ if(g==3){r[k++]=',';g=0;} r[k++]='0'+d%10; d/=10; g++; }while(d);
    int j=0; if(neg) buf[j++]='-'; while(k) buf[j++]=r[--k]; buf[j]=0;
    { static int nl; if(nl<60){ nl++; lg("DLGMONEY man "); lgh((u32)v,8); lg(" -> $"); lg(buf); lg("\r\n"); } } return; }
  ((SPF)(base+0x569560))(buf,(const char*)(base+0x2a0c2dc),v);
}
static void wmmnum_init(void){
  static const u8 pn[]={0x44,0x8b,0xc0,0x40,0x88,0x6c,0x24,0x28,0x48,0x8d,0x15,0xa1,0x90,0x9d,0x02,0x48,0x8d,0x4c,0x24,0x28,0xe8,0x1b,0x63,0x53,0x00};
  u8*f=base+0x3322c; if(!eq(f,pn,25)){ lg("dialogue money: code differs - not enabled\r\n"); return; }
  u8 p[25]={0x48,0x89,0xd9, 0x89,0xc2, 0x4c,0x8d,0x44,0x24,0x28, 0x48,0xb8,0,0,0,0,0,0,0,0, 0xff,0xd0, 0x90,0x90,0x90};
  u64 h=(u64)hnum; cpy(p+12,(u8*)&h,8);
  DWORD old; VirtualProtect(f,25,0x40,&old); cpy(f,p,25); VirtualProtect(f,25,old,&old);
  lg("dialogue money: real dollars\r\n"); }

/* pt5: string vars in dialogue (farm/owner names typed as full-width letters) printed letter-spaced ("A t o m i c").
   Mid-hook right after the engine evaluates a \x02 var into its 0x40 stack buffer: fold full-width ASCII to half-width. */
static void fwfold(u8*s){ if(dlgkana(s)) return; u8*d=s; while(*s){ u8 c=s[0];
    if((c>=0x81&&c<=0x9f)||(c>=0xe0&&c<=0xfc)){ u8 t=s[1]; if(!t){ *d++=c; s++; break; } u8 r=0;
      if(c==0x82){ if(t>=0x60&&t<=0x79) r='A'+(t-0x60); else if(t>=0x81&&t<=0x9a) r='a'+(t-0x81); else if(t>=0x4f&&t<=0x58) r='0'+(t-0x4f); }
      else if(c==0x81){ if(t==0x40) r=' '; else if(t==0x44) r='.'; else if(t==0x66) r=0x27; else if(t==0x95) r='&'; else if(t==0x7c) r='-'; }
      if(r) *d++=r; else { *d++=c; *d++=t; } s+=2; }
    else *d++=*s++; }
  *d=0; }
static void fwfold_init(void){
  static const u8 sig[]={0x0f,0xb6,0x4c,0x24,0x40,0x84,0xc9,0x74,0x4b,0x48,0x8d,0x54,0x24,0x40};
  u8*f=base+0x331d8; if(!eq(f,sig,14)){ lg("dialogue name fold: code differs - off\r\n"); return; }
  u8*t=VirtualAlloc(0,128,0x3000,0x40); if(!t) return; int k=0;
  static const u8 a[]={0x50,0x51,0x52,0x41,0x50,0x41,0x51,0x41,0x52,0x41,0x53, 0x48,0x8d,0x4c,0x24,0x78, 0x48,0x89,0xe0,0x48,0x83,0xe4,0xf0,0x50,0x48,0x83,0xec,0x28, 0x48,0xb8};
  for(u32 i=0;i<sizeof a;i++) t[k++]=a[i]; { u64 x=(u64)fwfold; cpy(t+k,(u8*)&x,8); k+=8; }
  static const u8 b[]={0xff,0xd0, 0x48,0x83,0xc4,0x28,0x5c, 0x41,0x5b,0x41,0x5a,0x41,0x59,0x41,0x58,0x5a,0x59,0x58, 0x0f,0xb6,0x4c,0x24,0x40,0x84,0xc9,0x75,0x0d, 0x49,0xbb};
  for(u32 i=0;i<sizeof b;i++) t[k++]=b[i]; { u64 x=(u64)(base+0x3322c); cpy(t+k,(u8*)&x,8); k+=8; }
  t[k++]=0x41;t[k++]=0xff;t[k++]=0xe3;
  static const u8 c2[]={0x48,0x8d,0x54,0x24,0x40,0x49,0xbb}; for(u32 i=0;i<sizeof c2;i++) t[k++]=c2[i];
  { u64 x=(u64)(base+0x331e6); cpy(t+k,(u8*)&x,8); k+=8; } t[k++]=0x41;t[k++]=0xff;t[k++]=0xe3;
  DWORD old; VirtualProtect(f,14,0x40,&old);
  *(volatile u16*)f=0xfeeb; { u64 x=(u64)t; cpy(f+2,(u8*)&x,8); } f[10]=0x41;f[11]=0xff;f[12]=0xe3;f[13]=0x90; *(volatile u16*)f=0xbb49;
  FlushInstructionCache((HANDLE)-1,f,14); VirtualProtect(f,14,old,&old);
  lg("dialogue name fold: on\r\n"); }
static void money_init(void){
  static const u8 pc_[]={0x4c,0x8b,0xdc,0x49,0x89,0x5b,0x18,0x55,0x57,0x41,0x55,0x41,0x56,0x41,0x57};
  static const u8 p1[]={0x48,0x89,0x5c,0x24,0x18,0x57,0x48,0x81,0xec,0xb0,0x00,0x00,0x00};
  static const u8 p2[]={0x48,0x89,0x4c,0x24,0x08,0x56,0x57,0x48,0x81,0xec,0xb8,0x00,0x00,0x00};
  if(!eq(base+0x5695b0,pc_,15)||!eq(base+0x2b6c0,p1,13)||!eq(base+0x18a730,p2,14)||base[0x569a20]!=0x48||base[0x569591]!=0x48){ lg("money: code differs - dollars NOT enabled\r\n"); return; }
  tramp(0x2b6c0,13,h2b7d0); tramp(0x18a730,14,h18b080); ocore=(COREF)tramp(0x5695b0,15,hcore);
  lg("money: yen shown as US dollars (159 yen = $1)\r\n"); wmmnum_init(); fwfold_init(); }
