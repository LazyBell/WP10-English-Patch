/* ---- English -> katakana (for the Reading box and the race-commentary voice) ----
   Order per word: game's own name dictionary (exact word) -> acronym letters -> digits -> sound rules.
   Output is Shift-JIS full-width katakana. Self-contained so it can be tested off the game. */

/* romaji -> katakana table (longest match first is handled by trying 4,3,2,1 letters) */
typedef struct { const char*r; const unsigned short k[4]; } RK;
static const RK RKT[]={
 {"kya",{0x30ad,0x30e3}},{"kyu",{0x30ad,0x30e5}},{"kyo",{0x30ad,0x30e7}},
 {"gya",{0x30ae,0x30e3}},{"gyu",{0x30ae,0x30e5}},{"gyo",{0x30ae,0x30e7}},
 {"sha",{0x30b7,0x30e3}},{"shi",{0x30b7}},{"shu",{0x30b7,0x30e5}},{"she",{0x30b7,0x30a7}},{"sho",{0x30b7,0x30e7}},
 {"cha",{0x30c1,0x30e3}},{"chi",{0x30c1}},{"chu",{0x30c1,0x30e5}},{"che",{0x30c1,0x30a7}},{"cho",{0x30c1,0x30e7}},
 {"tsu",{0x30c4}},{"nya",{0x30cb,0x30e3}},{"nyu",{0x30cb,0x30e5}},{"nyo",{0x30cb,0x30e7}},
 {"hya",{0x30d2,0x30e3}},{"hyu",{0x30d2,0x30e5}},{"hyo",{0x30d2,0x30e7}},
 {"mya",{0x30df,0x30e3}},{"myu",{0x30df,0x30e5}},{"myo",{0x30df,0x30e7}},
 {"rya",{0x30ea,0x30e3}},{"ryu",{0x30ea,0x30e5}},{"ryo",{0x30ea,0x30e7}},
 {"bya",{0x30d3,0x30e3}},{"byu",{0x30d3,0x30e5}},{"byo",{0x30d3,0x30e7}},
 {"pya",{0x30d4,0x30e3}},{"pyu",{0x30d4,0x30e5}},{"pyo",{0x30d4,0x30e7}},
 {"ja",{0x30b8,0x30e3}},{"ji",{0x30b8}},{"ju",{0x30b8,0x30e5}},{"je",{0x30b8,0x30a7}},{"jo",{0x30b8,0x30e7}},
 {"fa",{0x30d5,0x30a1}},{"fi",{0x30d5,0x30a3}},{"fu",{0x30d5}},{"fe",{0x30d5,0x30a7}},{"fo",{0x30d5,0x30a9}},
 {"va",{0x30f4,0x30a1}},{"vi",{0x30f4,0x30a3}},{"vu",{0x30f4}},{"ve",{0x30f4,0x30a7}},{"vo",{0x30f4,0x30a9}},
 {"ti",{0x30c6,0x30a3}},{"di",{0x30c7,0x30a3}},{"tu",{0x30c8,0x30a5}},{"du",{0x30c9,0x30a5}},
 {"wi",{0x30a6,0x30a3}},{"we",{0x30a6,0x30a7}},{"wo",{0x30a6,0x30a9}},{"wa",{0x30ef}},
 {"ye",{0x30a4,0x30a7}},{"si",{0x30b7}},{"zi",{0x30b8}},{"hu",{0x30d5}},
 {"ka",{0x30ab}},{"ki",{0x30ad}},{"ku",{0x30af}},{"ke",{0x30b1}},{"ko",{0x30b3}},
 {"ga",{0x30ac}},{"gi",{0x30ae}},{"gu",{0x30b0}},{"ge",{0x30b2}},{"go",{0x30b4}},
 {"sa",{0x30b5}},{"su",{0x30b9}},{"se",{0x30bb}},{"so",{0x30bd}},
 {"za",{0x30b6}},{"zu",{0x30ba}},{"ze",{0x30bc}},{"zo",{0x30be}},
 {"ta",{0x30bf}},{"te",{0x30c6}},{"to",{0x30c8}},
 {"da",{0x30c0}},{"de",{0x30c7}},{"do",{0x30c9}},
 {"na",{0x30ca}},{"ni",{0x30cb}},{"nu",{0x30cc}},{"ne",{0x30cd}},{"no",{0x30ce}},
 {"ha",{0x30cf}},{"hi",{0x30d2}},{"he",{0x30d8}},{"ho",{0x30db}},
 {"ba",{0x30d0}},{"bi",{0x30d3}},{"bu",{0x30d6}},{"be",{0x30d9}},{"bo",{0x30dc}},
 {"pa",{0x30d1}},{"pi",{0x30d4}},{"pu",{0x30d7}},{"pe",{0x30da}},{"po",{0x30dd}},
 {"ma",{0x30de}},{"mi",{0x30df}},{"mu",{0x30e0}},{"me",{0x30e1}},{"mo",{0x30e2}},
 {"ya",{0x30e4}},{"yu",{0x30e6}},{"yo",{0x30e8}},
 {"ra",{0x30e9}},{"ri",{0x30ea}},{"ru",{0x30eb}},{"re",{0x30ec}},{"ro",{0x30ed}},
 {"a",{0x30a2}},{"i",{0x30a4}},{"u",{0x30a6}},{"e",{0x30a8}},{"o",{0x30aa}},
 {"n",{0x30f3}},{"-",{0x30fc}},{"Q",{0x30c3}},
 {0,{0}}};

static int kslen(const char*s){int n=0;while(s[n])n++;return n;}
static int kseq(const char*a,const char*b,int n){for(int i=0;i<n;i++) if(a[i]!=b[i]) return 0; return 1;}
static int isv(char c){return c=='a'||c=='e'||c=='i'||c=='o'||c=='u';}
static int isvy(char c){return isv(c)||c=='y';}
static int isc(char c){return c>='a'&&c<='z'&&!isv(c);}

/* English spelling -> romaji-ish string (lower case, '-' = long vowel, 'Q' = small tsu) */
static const char* const EXC[][2]={{"the","za"},{"of","obu"},{"and","ando"},{"a","a"},{"in","in"},{"on","on"},{"to","tu-"},
 {"my","mai"},{"mr","misuta-"},{"mrs","misesu"},{"ms","mizu"},{"st","sento"},{"de","do"},{"la","ra"},{"le","ru"},{"du","dyu-"},
 {"no","no-"},{"go","go-"},{"so","so-"},{"one","wan"},{"two","tsu-"},{"you","yu-"},{"for","fo-"},{"is","izu"},{"it","itto"},
 {"be","bi-"},{"he","hi-"},{"she","shi-"},{"we","ui-"},{"me","mi-"},{"by","bai"},{"oh","o-"},{"o","o-"},{0,0}};
/* vowel sound at s[j]; returns letters used, writes romaji */
static int vowel(const char*s,int n,int j,int magic,const char**vs){
  char c=s[j], a=j+1<n?s[j+1]:0, b=j+2<n?s[j+2]:0;
#define V(str,k) do{ *vs=(str); return (k); }while(0)
  if(j==magic){ if(a=='r'&&j+2==n){ if(c=='i')V("aia-",2); if(c=='a')V("ea-",2); if(c=='o')V("o-",2); if(c=='u')V("yua-",2); V("ia-",2); }
    if(c=='a')V("ei",1); if(c=='i')V("ai",1); if(c=='o')V("o-",1); if(c=='u')V("yu-",1); V("i-",1); }
  if(c=='o'&&a=='u'&&b=='g'&&j+3<n&&s[j+3]=='h') V("o-",4);
  if(c=='a'&&a=='u'&&b=='g'&&j+3<n&&s[j+3]=='h') V("o-",4);
  if(c=='e'&&a=='i'&&b=='g'&&j+3<n&&s[j+3]=='h') V("ei",4);
  if(c=='i'&&a=='g'&&b=='h') V("ai",3);
  if(c=='e'&&a=='a'&&b=='r'&&(j+3>=n||!isvy(s[j+3]))) V(j+3>=n?"ia-":"a-",3);
  if(c=='e'&&(a=='e'||a=='a')) V("i-",2);
  if(c=='i'&&a=='e') V("i-",2);
  if(c=='o'&&a=='o') V("u-",2);
  if(c=='a'&&(a=='i'||a=='y')) V("ei",2);
  if(c=='o'&&a=='a') V("o-",2);
  if(c=='o'&&a=='u') V("au",2);
  if(c=='o'&&a=='w'&&(j+2>=n||!isv(b))) V((j+2>=n&&n>3)?"o-":"au",2);
  if(c=='o'&&(a=='i'||a=='y')) V("oi",2);
  if(c=='a'&&(a=='u'||a=='w')) V("o-",2);
  if(c=='u'&&a=='e') V((j>0&&(s[j-1]=='l'||s[j-1]=='r'))?"u-":"yu-",2);
  if(c=='e'&&a=='w') V((j>0&&(s[j-1]=='l'||s[j-1]=='r'))?"u-":"yu-",2);
  if(c=='e'&&a=='y') V(j+2<n?"ei":"i-",2);
  if(c=='e'&&a=='i') V("ei",2);
  if(c=='e'&&a=='u') V("yu-",2);
  if(c=='o'&&a=='l'&&(b=='d'||b=='t')) V("o-",1);
  if(a=='r' && b!='r' && (j+2>=n || !isvy(b))){ if(c=='o') V("o-",2); V("a-",2); }
  if(c=='i' && j+3==n-1 && isc(a) && a!='r' && b=='e' && s[j+3]=='r') V("ai",1);
  if(c=='y'){ if(j==n-1) V(n<=3?"ai":"i-",1); V("i",1); }
  if(c=='u'){ int closed = j+1<n && isc(a) && (j+2>=n || isc(b)); V(closed?"a":"u",1); }
  if(c=='e'&&j==n-1) V(n<=3?"i-":"e",1);
  if(c=='a')V("a",1); if(c=='e')V("e",1); if(c=='i')V("i",1); V("o",1);
#undef V
}
/* Is this word plain Japanese romaji (Matsukaze, Daisangen)? Then read it as romaji. */
static int jpword(const char*s,int n){
  static const char* const SY[]={"kya","kyu","kyo","gya","gyu","gyo","sha","shi","shu","sho","cha","chi","chu","cho","tsu","nya","nyu","nyo",
   "hya","hyu","hyo","mya","myu","myo","rya","ryu","ryo","bya","byu","byo","pya","pyu","pyo","ja","ji","ju","jo","fu",0};
  int i=0, marker=0;
  if(n<3) return 0;
  while(i<n){
    char c=s[i];
    if(isv(c)){ if(i+1<n&&s[i+1]==c&&c!='e') marker=1; if(c=='o'&&i+1<n&&s[i+1]=='u') marker=1; i++; continue; }
    int hit=0; for(int k=0;SY[k];k++){ int L=kslen(SY[k]); if(i+L<=n&&kseq(s+i,SY[k],L)){ i+=L; hit=1; if(SY[k][1]!='a'||L==3) marker=1; break; } }
    if(hit) continue;
    if(c=='n'&&(i+1>=n||!isv(s[i+1])&&s[i+1]!='y')){ i++; continue; }
    if(i+1<n&&s[i+1]==c&&(c=='k'||c=='t'||c=='p'||c=='s')){ i++; marker=1; continue; }  /* small tsu */
    if((c=='k'||c=='g'||c=='s'||c=='z'||c=='t'||c=='d'||c=='n'||c=='h'||c=='b'||c=='p'||c=='m'||c=='r'||c=='y'||c=='w')&&i+1<n&&isv(s[i+1])){
      char v=s[i+1];
      if((c=='s'&&v=='i')||(c=='t'&&(v=='i'||v=='u'))||(c=='d'&&(v=='i'||v=='u'))||(c=='h'&&v=='u')||(c=='z'&&v=='i')||(c=='y'&&(v=='i'||v=='e'))||(c=='w'&&v!='a'&&v!='o')) return 0;
      i+=2; continue; }
    return 0; }
  if(s[n-1]=='e'&&!marker) return 0;
  return 1; }
static void en2ro(const char*w,int L,char*o,int cap){
  int p=0; char s[64]; int n=0; for(int i=0;i<L&&n<60;i++){ char c=w[i]; if(c>='A'&&c<='Z')c+=32; if(c>='a'&&c<='z') s[n++]=c; } s[n]=0;
  char one[2];
#define PUT(str) do{ const char*_q=(str); while(*_q&&p<cap-1) o[p++]=*_q++; }while(0)
#define AT(k,str) (i+(k)<=n && kseq(s+i,(str),(k)))
  for(int e=0;EXC[e][0];e++) if(kslen(EXC[e][0])==n&&kseq(EXC[e][0],s,n)){ PUT(EXC[e][1]); o[p]=0; return; }
  if(jpword(s,n)){ for(int i=0;i<n;i++){ if(i+1<n&&s[i+1]==s[i]&&isc(s[i])&&s[i]!='n'){ PUT("Q"); continue; } if(s[i]=='n'&&(i+1>=n||(!isv(s[i+1])&&s[i+1]!='y'))){ PUT("n"); continue; }
      char t[2]={s[i],0}; PUT(t); if(isc(s[i])&&s[i]!='n'&&i+1<n&&!isvy(s[i+1])&&s[i]!='s'&&s[i]!='c'&&s[i]!='t') {} }
    /* tidy romaji: ou -> o-, ei kept */
    o[p]=0; return; }
  if(n>3&&kseq(s+n-3,"ier",3)){ s[n-2]='A'; n--; s[n]=0; }
  if(n>4&&kseq(s+n-4,"ture",4)){ s[n-4]='C'; s[n-3]=0; n-=3; }      /* nature -> naCha- */
  if(n>4&&kseq(s+n-4,"sure",4)){ s[n-4]='S'; s[n-3]=0; n-=3; }
  if(n>3 && s[n-1]=='e' && s[n-2]=='l' && isc(s[n-3])) n--;      /* arkle -> arkl */
  int magic=-1;
  if(n>3 && s[n-1]=='e' && isc(s[n-2]) && s[n-2]!='l'){
    int v=n-3; if(v>=0 && isv(s[v]) && (v==0||!isvy(s[v-1]))) magic=v;
    if(s[n-2]=='c' && magic>0){ int ov=0; for(int q=0;q<magic-1;q++) if(isv(s[q])) ov=1; if(ov) magic=-1; }
    if(s[n-2]=='c') s[n-2]='s'; else if(s[n-2]=='g') s[n-2]='j';
    if(s[n-2]=='r'&&magic>=0){ /* keep r for "ire/are/ore" */ n--; } else n--; }
  else if(n>4 && s[n-2]=='e' && s[n-1]=='s' && isc(s[n-3]) && s[n-3]!='s' && s[n-3]!='c' && s[n-3]!='g' && s[n-3]!='z' && s[n-3]!='r'){
    int v=n-4; if(v>=0&&isv(s[v])&&(v==0||!isvy(s[v-1]))) magic=v; s[n-2]='s'; n--; }
  int i=0;
  while(i<n){
    char c=s[i], nx=i+1<n?s[i+1]:0; const char*vs;
    if(c=='C'){ PUT("cha-"); i++; continue; }
    if(c=='A'){ PUT("a-"); i++; continue; }
    if(c=='s' && i==n-1 && i-1==magic){ PUT("zu"); i++; continue; }
    if(c=='S'){ PUT("sha-"); i++; continue; }
    if(isv(c)||(c=='y'&&i>0&&!isv(nx))){ int k=vowel(s,n,i,magic,&vs); PUT(vs); i+=k; continue; }
    const char*cons=0; int adv=1; int gem=0;
    if(AT(4,"tion")){PUT("shon");i+=4;continue;}
    if(AT(4,"sion")){PUT("jon");i+=4;continue;}
    if(AT(3,"tch")){ if(i+3<n&&isvy(s[i+3])){ int k=vowel(s,n,i+3,magic,&vs); PUT("Qch"); PUT(vs); i+=3+k; } else { PUT("Qchi"); i+=3; } continue;}
    if(AT(2,"ph")){cons="f";adv=2;}
    else if(AT(2,"th")){cons="s";adv=2;}
    else if(AT(2,"sh")){cons="sh";adv=2;}
    else if(AT(2,"ch")){cons="ch";adv=2;}
    else if(AT(2,"ck")){cons="k";adv=2;gem=(i+2>=n)||(i+3==n&&s[i+2]=='y');}
    else if(AT(2,"wh")){cons="w";adv=2;}
    else if(AT(2,"qu")){cons="Kw";adv=2;}
    else if(AT(2,"gh")){ i+=2; continue; }
    else if(i==0&&AT(2,"kn")){cons="n";adv=2;}
    else if(i==0&&AT(2,"wr")){cons="r";adv=2;}
    else if(AT(2,"ng")&&(i+2>=n||!isv(s[i+2]))){ PUT("ngu"); i+=2; continue; }
    else if(c=='x'&&i==0){ cons="z"; }
    else if(c=='x'){ PUT(i>0&&isv(s[i-1])?"Qkusu":"kusu"); i++; continue; }
    else if(c=='c'){ cons=(nx=='e'||nx=='i'||nx=='y')?"s":"k"; if(nx=='c'){cons="k";adv=2;gem=1;} if(nx=='k'){cons="k";adv=2;} }
    else if(c=='v'){ cons="b"; }
    else if(c=='s' && i>0 && isv(s[i-1]) && isv(nx) && nx!='h'){ cons="z"; }
    else if(c=='q'){ cons="k"; }
    else { one[0]=c; one[1]=0; cons=one;
      if(nx==c && (c=='p'||c=='t'||c=='k'||c=='d'||c=='g'||c=='b') && i>0 && isv(s[i-1])) gem=1;
      if(nx==c) adv=2;
      /* final p/t/k/d/g/b after one short vowel: "lap" -> rappu */
      if((i==n-1||(i==n-2&&s[n-1]=='s')) && (c=='p'||c=='t'||c=='k'||c=='d'||c=='g'||c=='b') && i>0 && isv(s[i-1]) && (i<2||!isvy(s[i-2])) && i-1!=magic && n<=6) gem=1; }
    if(c=='n' && adv==1 && (i+1>=n || !isvy(nx))){ PUT("n"); i++; continue; }
    if(c=='m' && adv==1 && (nx=='b'||nx=='p')){ PUT("n"); i++; continue; }
    if(gem) PUT("Q");
    i+=adv; char v=i<n?s[i]:0;
    int vowelnext = isv(v) || (v=='y' && (i+1>=n || !isv(s[i+1])));
    if(v=='y' && i+1<n && isv(s[i+1]) && cons[0]!='K' && !cons[1]){ int k=vowel(s,n,i+1,magic,&vs); PUT(cons); PUT("y"); PUT(vs); i+=1+k; continue; }
    if(cons[0]=='K'){ PUT("ku"); if(vowelnext){ int k=vowel(s,n,i,magic,&vs); if(vs[0]=='y'&&vs[1]=='u') vs+=1; PUT(vs); i+=k; } continue; }
    if(vowelnext){ int k=vowel(s,n,i,magic,&vs); PUT(cons); PUT(vs); i+=k; continue; }
    if(cons[0]=='t'&&!cons[1]){ PUT("to"); }
    else if(cons[0]=='d'&&!cons[1]){ PUT("do"); }
    else if(kseq(cons,"ch",2)){ PUT("chi"); }
    else if(kseq(cons,"sh",2)){ PUT("shu"); }
    else if(cons[0]=='j'){ PUT("ji"); }
    else if(cons[0]=='l'){ PUT("ru"); }
    else if(cons[0]=='r'){ if(p>0&&o[p-1]!='-'&&i>=n&&isv(o[p-1])) PUT("-"); else PUT("ru"); }
    else if(cons[0]=='w'){ PUT("u"); }
    else if(cons[0]=='h'){ }
    else if(cons[0]=='y'){ PUT("i"); }
    else { PUT(cons); PUT("u"); }
  }
  o[p]=0;
#undef PUT
#undef AT
}
/* romaji -> unicode katakana; returns count */
static int ro2k(const char*r,unsigned short*out,int cap){
  int n=0,i=0,L=kslen(r);
  while(i<L&&n<cap-3){
    /* l -> r, c -> k, v handled in table */
    int done=0;
    for(int len=3;len>=1&&!done;len--){ if(i+len>L) continue;
      char t[4]; for(int q=0;q<len;q++){ char c=r[i+q]; if(c=='l')c='r'; t[q]=c; } t[len]=0;
      for(int k=0;RKT[k].r;k++) if(kslen(RKT[k].r)==len&&kseq(RKT[k].r,t,len)){ for(int q=0;q<4&&RKT[k].k[q];q++) out[n++]=RKT[k].k[q]; i+=len; done=1; break; } }
    if(!done){ /* stray consonant (e.g. "kw","ts"+vowel) -> consonant + u */
      char t[3]={r[i],'u',0}; if(t[0]=='l')t[0]='r';
      int ok=0; for(int k=0;RKT[k].r;k++) if(kseq(RKT[k].r,t,3)&&kslen(RKT[k].r)==2){ for(int q=0;q<4&&RKT[k].k[q];q++) out[n++]=RKT[k].k[q]; ok=1; break; }
      i++; (void)ok; }
  }
  /* tidy: no long mark after another long mark / at start; no small tsu at end */
  int m=0; for(int q=0;q<n;q++){ if(out[q]==0x30fc&&(m==0||out[m-1]==0x30fc||out[m-1]==0x30c3)) continue; out[m++]=out[q]; }
  while(m>0&&out[m-1]==0x30c3) m--;
  return m;
}
static const unsigned short LETTER[26][6]={
 {0x30a8,0x30fc},{0x30d3,0x30fc},{0x30b7,0x30fc},{0x30c7,0x30a3,0x30fc},{0x30a4,0x30fc},{0x30a8,0x30d5},{0x30b8,0x30fc},
 {0x30a8,0x30a4,0x30c1},{0x30a2,0x30a4},{0x30b8,0x30a7,0x30fc},{0x30b1,0x30fc},{0x30a8,0x30eb},{0x30a8,0x30e0},{0x30a8,0x30cc},
 {0x30aa,0x30fc},{0x30d4,0x30fc},{0x30ad,0x30e5,0x30fc},{0x30a2,0x30fc,0x30eb},{0x30a8,0x30b9},{0x30c6,0x30a3,0x30fc},
 {0x30e6,0x30fc},{0x30d6,0x30a4},{0x30c0,0x30d6,0x30ea,0x30e5,0x30fc},{0x30a8,0x30c3,0x30af,0x30b9},{0x30ef,0x30a4},{0x30bc,0x30c3,0x30c8}};
static const char* const DIGIT[10]={"zero","wan","tsu-","suri-","fo-","faibu","shikkusu","sebun","eito","nain"};
static int u2sjis(unsigned short u,unsigned char*o){
  if(u==0x30fc){o[0]=0x81;o[1]=0x5b;return 2;}
  if(u>=0x30a1&&u<=0x30f6){ unsigned s=0x8340+(u-0x30a1); if(s>=0x837f) s++; o[0]=(unsigned char)(s>>8); o[1]=(unsigned char)s; return 2; }
  return 0; }
/* dictionary lookup hook (set by the add-on; returns SJIS katakana or 0) */
static const unsigned char* (*kdict)(const unsigned char*,int);
/* Convert an ASCII name to SJIS katakana. maxch>0 caps the number of characters (Reading box holds 9).
   Returns byte length (0 = could not convert). */
static int en2kana(const unsigned char*s,unsigned char*out,int outcap,int maxch){
  int L=0; while(s[L]) L++;
  unsigned char buf[256]; int bp=0;
  int i=0;
  while(i<L){
    while(i<L&&!((s[i]|32)>='a'&&(s[i]|32)<='z')&&!(s[i]>='0'&&s[i]<='9')) i++;
    if(i>=L) break;
    int j=i; while(j<L&&(((s[j]|32)>='a'&&(s[j]|32)<='z')||(s[j]>='0'&&s[j]<='9')||s[j]=='\'')) j++;
    /* word = s[i..j), strip apostrophes for lookup */
    unsigned char w[64]; int wl=0; for(int q=i;q<j&&wl<60;q++) if(s[q]!='\'') w[wl++]=s[q]; w[wl]=0;
    const unsigned char*dk=0;
    int allcap=1, alpha=0, digit=0; for(int q=0;q<wl;q++){ if(w[q]>='a'&&w[q]<='z') allcap=0; if((w[q]|32)>='a'&&(w[q]|32)<='z') alpha=1; if(w[q]>='0'&&w[q]<='9') digit=1; }
    if(kdict && !(allcap&&wl>=2&&wl<=4) && !digit) dk=kdict(w,wl);
    if(dk){ while(*dk&&bp<250) buf[bp++]=*dk++; }
    else if(alpha && allcap && wl<=4 && !digit){
      for(int q=0;q<wl;q++){ const unsigned short*lk=LETTER[(w[q]|32)-'a']; for(int z=0;z<6&&lk[z];z++) bp+=u2sjis(lk[z],buf+bp); } }
    else {
      /* split letters/digits */
      int q=0; while(q<wl){
        if(w[q]>='0'&&w[q]<='9'){ unsigned short k[24]; int kn=ro2k(DIGIT[w[q]-'0'],k,24); for(int z=0;z<kn&&bp<248;z++) bp+=u2sjis(k[z],buf+bp); q++; continue; }
        int e=q; while(e<wl&&!(w[e]>='0'&&w[e]<='9')) e++;
        char ro[160]; en2ro((const char*)w+q,e-q,ro,150);
        unsigned short k[96]; int kn=ro2k(ro,k,96); for(int z=0;z<kn&&bp<248;z++) bp+=u2sjis(k[z],buf+bp);
        q=e; }
    }
    i=j;
  }
  buf[bp]=0;
  /* character cap: drop long marks from the end backwards, then small tsu, then cut */
  if(maxch>0){
    int nch=bp/2;
    for(int pass=0;pass<2&&nch>maxch;pass++){
      unsigned char a=pass==0?0x81:0x83, b=pass==0?0x5b:0x62; /* ー then ッ */
      for(int q=bp-2;q>=0&&nch>maxch;q-=2){ if(buf[q]==a&&buf[q+1]==b){ for(int z=q;z+2<=bp;z++) buf[z]=buf[z+2]; bp-=2; nch--; } } }
    if(nch>maxch){ bp=maxch*2; /* don't end on a small kana */ }
    buf[bp]=0;
  }
  if(bp+1>outcap) bp=(outcap-1)&~1;
  for(int q=0;q<bp;q++) out[q]=buf[q]; out[bp]=0; return bp;
}
