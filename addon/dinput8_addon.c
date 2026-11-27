typedef unsigned char u8; typedef unsigned short u16; typedef unsigned int u32; typedef unsigned long long u64;
typedef void* HANDLE; typedef int BOOL; typedef unsigned long DWORD;
#define WINAPI __stdcall
__declspec(dllimport) HANDLE WINAPI GetModuleHandleA(const char*);
__declspec(dllimport) DWORD WINAPI GetModuleFileNameA(HANDLE,char*,DWORD);
__declspec(dllimport) HANDLE WINAPI CreateFileA(const char*,DWORD,DWORD,void*,DWORD,DWORD,HANDLE);
__declspec(dllimport) BOOL WINAPI ReadFile(HANDLE,void*,DWORD,DWORD*,void*);
__declspec(dllimport) BOOL WINAPI WriteFile(HANDLE,const void*,DWORD,DWORD*,void*);
__declspec(dllimport) BOOL WINAPI CloseHandle(HANDLE);
__declspec(dllimport) BOOL WINAPI VirtualProtect(void*,u64,DWORD,DWORD*);
__declspec(dllimport) BOOL WINAPI FlushInstructionCache(HANDLE,const void*,u64);
__declspec(dllimport) void* WINAPI VirtualAlloc(void*,u64,DWORD,DWORD);
__declspec(dllimport) HANDLE WINAPI CreateThread(void*,u64,DWORD (WINAPI*)(void*),void*,DWORD,DWORD*);
__declspec(dllimport) void WINAPI Sleep(DWORD);
__declspec(dllimport) BOOL WINAPI SwitchToThread(void);
__declspec(dllimport) HANDLE WINAPI LoadLibraryA(const char*);
__declspec(dllimport) void* WINAPI GetProcAddress(HANDLE,const char*);
__declspec(dllimport) DWORD WINAPI GetTickCount(void);
__declspec(dllimport) short WINAPI GetAsyncKeyState(int);
__declspec(dllimport) u32 WINAPI GetACP(void);
__declspec(dllimport) DWORD WINAPI GetCurrentProcessId(void);
__declspec(dllimport) BOOL WINAPI EnumWindows(BOOL (WINAPI*)(HANDLE,long long),long long);
__declspec(dllimport) DWORD WINAPI GetWindowThreadProcessId(HANDLE,DWORD*);
__declspec(dllimport) BOOL WINAPI IsWindowVisible(HANDLE);
__declspec(dllimport) BOOL WINAPI IsWindowUnicode(HANDLE);
__declspec(dllimport) HANDLE WINAPI SetWindowsHookExA(int,long long (WINAPI*)(int,u64,long long),HANDLE,DWORD);
__declspec(dllimport) long long WINAPI CallNextHookEx(HANDLE,int,u64,long long);
__declspec(dllimport) void* WINAPI AddVectoredExceptionHandler(u32,long (WINAPI*)(void*));
typedef struct { unsigned short y,mo,dw,d,h,mi,s,ms; } ST_;
__declspec(dllimport) void WINAPI GetLocalTime(ST_*);
__declspec(dllimport) u64 WINAPI VirtualQuery(const void*,void*,u64);
__declspec(dllimport) DWORD WINAPI GetFinalPathNameByHandleW(HANDLE,unsigned short*,DWORD,DWORD);

static u8*base; static u8 saved[64]; static char dir[520]; static u32 dirlen; static HANDLE gpt;
static void cpy(u8*d,const u8*s,u64 n){while(n--)*d++=*s++;}
static int eq(const u8*a,const u8*b,u64 n){while(n--)if(*a++!=*b++)return 0;return 1;}
static u32 slen(const char*s){u32 n=0;while(s[n])n++;return n;}
static void path(char*out,const char*name){u32 i;for(i=0;i<dirlen;i++)out[i]=dir[i];u32 j=0;while(name[j]){out[i++]=name[j++];}out[i]=0;}
static HANDLE lf;
static void lg(const char*s){DWORD w;if(lf)WriteFile(lf,s,slen(s),&w,0);}
static void lgh(u64 v,int n){char b[17];for(int i=n-1;i>=0;i--){b[i]="0123456789abcdef"[v&15];v>>=4;}b[n]=0;lg(b);}

#define NCUST 0x6590
#define FL 24
static u8 *full;   /* NCUST x FL : full code strings for custom names longer than 9 */
static u8 **ctab;  /* game's custom table pointer (9 bytes per entry) */
typedef u8*(*GETF)(u16,u8*); typedef void(*SETF)(u16,u8*); typedef void(*CONVF)(u8*,u8*,u32);
static GETF oget; static SETF oset; static CONVF conv;
static void savefile(void){
  char fn[600]; path(fn,"WP10_EN_longnames.bin"); HANDLE h=CreateFileA(fn,0x40000000,0,0,2,0x80,0);
  if(h==(HANDLE)-1)return; DWORD w; for(u32 i=0;i<NCUST;i++) if(full[i*FL]){ u16 k=(u16)i; WriteFile(h,&k,2,&w,0); WriteFile(h,full+i*FL,FL,&w,0);} CloseHandle(h);
}
static void loadfile(void){
  char fn[600]; path(fn,"WP10_EN_longnames.bin"); HANDLE h=CreateFileA(fn,0x80000000,1,0,3,0x80,0);
  if(h==(HANDLE)-1)return; DWORD r; u16 k; u8 b[FL];
  while(ReadFile(h,&k,2,&r,0)&&r==2&&ReadFile(h,b,FL,&r,0)&&r==FL) if(k<NCUST) cpy(full+k*FL,b,FL);
  CloseHandle(h);
}
static u8* hget(u16 idx,u8*out){
  u8*r=oget(idx,out);
  if(idx<NCUST && *ctab){ u8*f=full+idx*FL; u8*t=*ctab+idx*9;
    if(f[0] && eq(f,t,9)){ u32 n=0; while(n<FL-1&&f[n]){out[n]=f[n];n++;} out[n]=0; } }
  return r;
}
static void hset(u16 idx,u8*sj){
  /* full replacement of the game's set (its 16-byte stack buffer overflows for names over 15 letters) */
  if(!sj||!*ctab) return;
  u16 k=idx<NCUST?idx:(NCUST-1);
  u8 b[64]; for(int i=0;i<64;i++)b[i]=0; conv(sj,b,0x17);
  u8*t=*ctab+k*9; for(int i=0;i<9;i++){ t[i]=b[i]; if(!b[i])break; }
  u32 n=0; while(n<40&&b[n])n++;
  u8*f=full+k*FL;
  if(n>9){ for(u32 i=0;i<FL;i++)f[i]=0; cpy(f,b,n<FL-1?n:FL-1); lg("long name idx ");lgh(k,4);lg(" len ");lgh(n,2);lg("\r\n"); }
  else f[0]=0;
  savefile();
}
static void lgs(const u8*s){ char b[80]; int i=0; if(!s){lg("(null)");return;} while(i<70&&s[i]){ b[i]=(s[i]>=0x20&&s[i]<0x7f)?s[i]:'?'; i++; } b[i]=0; lg("\""); lg(b); lg("\" len "); lgh(i,2); }
typedef int(*VALF)(u8*,int); static VALF oval;
typedef int(*V6F)(u8*); static V6F o6110;
typedef int(*INF)(u8*,int,int,int); static INF oin;
static int asciiname(const u8*s){ int n=0; for(;s[n];n++){ u8 c=s[n]; if(!((c>='A'&&c<='Z')||(c>='a'&&c<='z')||(c>='0'&&c<='9')||c==' '||c=='\''||c=='.'||c=='-')) return 0; } return n>=2&&n<=18; }
/* Owner prefix (冠名) and club name boxes only take katakana/hiragana, so English players were stuck with
   Japanese prefixes. Accept English letters there too: full-width letters typed through the helper are folded
   to plain ASCII first (the name code converter turns ASCII into the game's English letter codes). */
static int fold_fw(u8*s){ u8*w=s; for(u8*p=s;*p;){ u8 c=p[0],d=p[1];
    if(c==0x82&&d>=0x60&&d<=0x79){*w++='A'+(d-0x60);p+=2;} else if(c==0x82&&d>=0x81&&d<=0x9a){*w++='a'+(d-0x81);p+=2;}
    else if(c==0x82&&d>=0x4f&&d<=0x58){*w++='0'+(d-0x4f);p+=2;} else if(c==0x81&&d==0x40){*w++=' ';p+=2;}
    else if(c==0x81&&d==0x66){*w++='\'';p+=2;} else if(c==0x81&&d==0x44){*w++='.';p+=2;} else if(c==0x81&&d==0x7c){*w++='-';p+=2;}
    else if(c>=0x81&&c<=0xfc){ return 0; } else *w++=*p++; }
  *w=0; return 1; }
static int latin(const u8*s,int lo,int hi){ int n=0,al=0; for(;s[n];n++){ u8 c=s[n]; if((c>='A'&&c<='Z')||(c>='a'&&c<='z')){al=1;continue;} if(!((c>='0'&&c<='9')||c==' '||c=='\''||c=='.'||c=='-')) return 0; } return al&&n>=lo&&n<=hi; }
static int hval(u8*s,int mode){
  { u64 rr=(u64)((u8*)__builtin_return_address(0)-base);
    if(rr==0x3ff34||rr==0x40170){ u8 t[64]; int i=0; for(;i<63&&s[i];i++)t[i]=s[i]; t[i]=0;
      if(fold_fw(t)&&latin(t,rr==0x3ff34?2:1,12)){ for(i=0;t[i];i++)s[i]=t[i]; s[i]=0;
        lg("VALIDATE ");lg(rr==0x3ff34?"prefix":"club");lg(" English ");lgs(s);lg(" -> allowed\r\n"); return 1; } } }
  int r=oval(s,mode); int a=asciiname(s); lg("VALIDATE ret ");lgh((u64)((u8*)__builtin_return_address(0)-base),8);lg(" mode ");lgh(mode,2);lg(" ");lgs(s);lg(" game says ");lgh(r,2); if(!r&&a){ r=1; lg(" -> allowed (English)"); } lg("\r\n"); return r; }
static int h6110(u8*s){ int r=o6110(s); lg("CHECK2 ret ");lgh((u64)((u8*)__builtin_return_address(0)-base),8);lg(" ");lgs(s);lg(" -> ");lgh(r,2);lg("\r\n"); return r; }
static volatile DWORD pulse_until; static volatile int namebox;
void* _AddressOfReturnAddress(void);
/* English horse names. The name dictionary (DATA.UNB entry 5) keeps the game's original katakana; every
   request for the katakana form of a name gets the dictionary's own English form instead, EXCEPT one:
   Custom Race "Add Real Horse" copies the katakana name into the runner slot (0xaa149f -> 0xa9e2b0) and
   refuses English ("Could not register"), so that one request keeps katakana - only when the record is
   built by the Custom Race add routine (0x4cbe00), so story-mode race fields stay English. */
typedef u64(*GWF)(u16,u8*,int); static GWF ogw; static volatile int gwraw;
static int sk(char c);
static volatile long gwn;
static u64 hgw(u16 id,u8*out,int mode){
  if(sk('L') && gwn<300){ long k=++gwn; if(k<300){ u64*sp=(u64*)_AddressOfReturnAddress(); lg("GW ");lgh(id,4);lg(" m");lgh(mode,1);lg(" ra ");lgh(sp[0]-(u64)base,8);lg(" ");lgh(sp[16]-(u64)base,8);lg(" ");lgh(sp[42]-(u64)base,8);lg("\r\n"); } }
  if(mode==0 && !gwraw){ u64*sp=(u64*)_AddressOfReturnAddress(); u64 b=(u64)base;
    int keep = sp[16]-b==0xa55f7 && sp[42]-b==0xa5711 && sp[50]-b==0xaa14a4 && sp[130]-b==0x4cbe05;
    if(!keep) mode=1; }
  return ogw(id,out,mode);
}
/* Custom Race runner list: the runner record must be built with the katakana name (it is checked by
   encoding it as a password), but once the check has passed and the runner is added to the list
   (0x4b6cb0), swap the record's name (+4, 48 bytes) for the same horse's English name. The historic
   horse being added sits in the temporary horse slot 0x332e. */
typedef u8*(*NAMEF)(u16,int); typedef u64(*ADDF)(u8*,u8*,int); static ADDF oadd;
static int streq(const u8*a,const u8*b){ while(*a&&*a==*b){a++;b++;} return *a==*b; }
static u64 hadd(u8*list,u8*rec,int flag){
  if(rec){ NAMEF nm=(NAMEF)(base+0xc4580); gwraw=1; const u8*k=nm(0x332e,0); gwraw=0;
    if(k&&*k&&streq(rec+4,k)){ const u8*e=nm(0x332e,1);
      if(e&&*e&&!streq(e,k)){ int i=0; while(e[i]&&i<0x2f){ rec[4+i]=e[i]; i++; } rec[4+i]=0; } } }
  return oadd(list,rec,flag);
}
typedef void(*DSF)(u64,u64,u64,u64,u64,u64,u64,u64,u64,u64); static DSF odset;
static void hdset(u64 a1,u64 a2,u64 a3,u64 a4,u64 a5,u64 a6,u64 a7,u64 a8,u64 a9,u64 a10){ odset(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10); if(namebox){ u8*dlg=(u8*)a1; *(u32*)(dlg+0x100)=0x13; *(u32*)(dlg+0x383c)=0x12; } }
static short WINAPI fakekey(int vk){ if(vk==0x76 && GetTickCount()<pulse_until) return (short)0x8000; return GetAsyncKeyState(vk); }
static int hin(u8*buf,int maxb,int a,int b){
  u8*ra=(u8*)__builtin_return_address(0);
  lg("INPUT ret ");lgh((u64)(ra-base),8);lg(" max ");lgh(maxb,2);lg(" before ");lgs(buf);
  if(ra!=base+0x82536 || maxb!=0x13){ int r=oin(buf,maxb,a,b); lg(" after ");lgs(buf);lg(" ret ");lgh((u32)r,8);lg("\r\n"); return r; }
  pulse_until=GetTickCount()+250;           /* full-width typing OFF for horse names */
  u8 big[96]; for(int i=0;i<96;i++)big[i]=0; for(int i=0;i<30&&buf[i];i++)big[i]=buf[i];
  namebox=1; int r=oin(big,0x25,a,b); namebox=0;
  u32 n=0; while(n<30&&big[n]){ if(n>=18)break; if(big[n]>=0x81&&big[n]<=0xfc){ if(n+2>30)break; n+=2; } else n++; }
  for(u32 i=0;i<n;i++)buf[i]=big[i]; buf[n]=0;
  pulse_until=GetTickCount()+250;           /* back ON for everything else */
  lg(" after ");lgs(buf);lg(" ret ");lgh((u32)r,8);lg(" (18-box mode)\r\n"); return r;
}
static void* tramp(u32 rva,u32 n,void*hookfn){
  u8*f=base+rva; u8*t=VirtualAlloc(0,64,0x3000,0x40); cpy(t,f,n);
  t[n]=0x48;t[n+1]=0xb8; u64 back=(u64)(f+n); cpy(t+n+2,(u8*)&back,8); t[n+10]=0xff;t[n+11]=0xe0;
  DWORD old; VirtualProtect(f,n,0x40,&old);
  /* patch safely while game threads may be running: park entry with a 2-byte self-jump, fill the rest, then set the first 2 bytes */
  *(volatile u16*)f=0xfeeb; u64 h=(u64)hookfn; cpy(f+2,(u8*)&h,8); f[10]=0xff;f[11]=0xe0; for(u32 i=12;i<n;i++)f[i]=0x90; *(volatile u16*)f=0xb848; FlushInstructionCache((HANDLE)-1,f,n);
  VirtualProtect(f,n,old,&old); return t;
}

/* crash catcher: on a fatal exception write WP10_crash.log (where it broke + game return addresses), then let Windows handle it as normal */
static volatile long ncrash; static u64 imgsz;
static void cw(HANDLE h,const char*s){DWORD w;WriteFile(h,s,slen(s),&w,0);}
static void ch(HANDLE h,u64 v,int n){char b[17];for(int i=n-1;i>=0;i--){b[i]="0123456789abcdef"[v&15];v>>=4;}b[n]=0;cw(h,b);}
static void cd(HANDLE h,u32 v,int n){char b[8];for(int i=n-1;i>=0;i--){b[i]='0'+v%10;v/=10;}b[n]=0;cw(h,b);}
static void cwhere(HANDLE h,u64 a){ if(a>=(u64)base&&a<(u64)base+imgsz){cw(h,"exe+");ch(h,a-(u64)base,8);} else ch(h,a,16); }
static long WINAPI crashh(void*ep){
  u8*er=*(u8**)ep; u8*cx=((u8**)ep)[1]; u32 code=*(u32*)er;
  if(!(code==0xc0000005||code==0xc0000374||code==0xc000001d||code==0xc0000094||code==0xc00000fd||code==0xc0000409||code==0xc0000096)) return 0;
  if(code==0xc0000005){ u64 a=*(u64*)(er+0x10); if(!(a>=(u64)base&&a<(u64)base+imgsz)) { /* AV outside the game exe: only log it if it is not a probe the game handles itself */ } }
  if(ncrash>=4) return 0; ncrash++;
  char fn[600]; path(fn,"WP10_crash.log"); HANDLE h=CreateFileA(fn,4,1,0,4,0x80,0); if(h==(HANDLE)-1) return 0;
  ST_ t; GetLocalTime(&t);
  cw(h,"=== WP10 crash ");cd(h,t.y,4);cw(h,"-");cd(h,t.mo,2);cw(h,"-");cd(h,t.d,2);cw(h," ");cd(h,t.h,2);cw(h,":");cd(h,t.mi,2);cw(h,":");cd(h,t.s,2);
  cw(h,"\r\ncode ");ch(h,code,8);cw(h," at ");cwhere(h,*(u64*)(er+0x10));
  u32 np=*(u32*)(er+0x18); if(np>2)np=2; for(u32 i=0;i<np;i++){cw(h," p");ch(h,*(u64*)(er+0x20+8*i),16);}
  cw(h,"\r\nrip ");cwhere(h,*(u64*)(cx+0xf8));
  static const char*rn[16]={"rax","rcx","rdx","rbx","rsp","rbp","rsi","rdi","r8","r9","r10","r11","r12","r13","r14","r15"};
  for(int i=0;i<16;i++){cw(h,i%4?" ":"\r\n");cw(h,rn[i]);cw(h,"=");ch(h,*(u64*)(cx+0x78+8*i),16);}
  cw(h,"\r\nstack:");
  u64*sp=(u64*)*(u64*)(cx+0x98); int k=0;
  u64 top; __asm__ volatile("movq %%gs:8,%0":"=r"(top));
  for(int i=0;i<4096&&k<48&&(u64)(sp+i+1)<=top;i++){ u64 v=sp[i]; if(v>(u64)base+0x1000&&v<(u64)base+0x2a03000){ cw(h,k%6?" ":"\r\n ");ch(h,v-(u64)base,8);k++; } }
  cw(h,"\r\n\r\n"); CloseHandle(h);
  return 0;
}

/* texture/file-load logger: records each fdata entry offset the game reads (first time only) + every file it opens -> WP10_loadlog.txt */
typedef BOOL (WINAPI*RFF)(HANDLE,void*,DWORD,DWORD*,void*);
typedef HANDLE (WINAPI*CFW)(const unsigned short*,DWORD,DWORD,void*,DWORD,DWORD,HANDLE);
typedef BOOL (WINAPI*SFPE)(HANDLE,long long,long long*,DWORD);
static RFF oRF; static CFW oCF; static SFPE oSF; static HANDLE ll; static DWORD llt0;
static struct { HANDLE h; u32 key; volatile long long pos; } fh[256];
static u64 *seen; static volatile long seenlock;
static void lw(const char*s){DWORD w;if(ll)WriteFile(ll,s,slen(s),&w,0);}
static void lwh(u64 v,int n){char b[17];for(int i=n-1;i>=0;i--){b[i]="0123456789abcdef"[v&15];v>>=4;}b[n]=0;lw(b);}
static HANDLE nonf[256]; static volatile long nnf;
static int fslot(HANDLE h){ for(int i=0;i<256;i++) if(fh[i].h==h) return fh[i].key?i:-1;
  for(int i=0;i<256;i++) if(nonf[i]==h) return -1;
  unsigned short w[300]; DWORD n=GetFinalPathNameByHandleW(h,w,290,0); u32 k=0; int ok=0;
  if(n>14&&n<290&&w[n-6]=='.'&&w[n-5]=='f'&&w[n-4]=='d'){ ok=1; for(DWORD j=n-14;j<n-6;j++){ unsigned short c=w[j]; k=k*16+(c<='9'?c-'0':(c|32)-'a'+10); } }
  if(!ok){ nonf[(nnf++)&255]=h; return -1; }
  for(int i=0;i<256;i++) if(!fh[i].h){ fh[i].key=k; fh[i].pos=0; fh[i].h=h; if(ll){lw("late fdata handle ");lwh(k,8);lw("\r\n");} return i; }
  return -1; }
static int firstseen(u64 v){ /* open addressing, 1M slots */
  u64 x=v*0x9E3779B97F4A7C15ull; u32 i=(u32)(x>>44); 
  while(_InterlockedCompareExchange(&seenlock,1,0)) SwitchToThread();
  int r=0; for(int n=0;n<1024;n++,i=(i+1)&0xfffff){ if(seen[i]==v){r=0;break;} if(!seen[i]){seen[i]=v;r=1;break;} }
  seenlock=0; return r; }
static HANDLE WINAPI hCF(const unsigned short*nm,DWORD a,DWORD b,void*c,DWORD d,DWORD e,HANDLE f){
  HANDLE h=oCF(nm,a,b,c,d,e,f);
  char t[300]; int n=0; for(;nm&&nm[n]&&n<290;n++) t[n]=(nm[n]<0x80)?(char)nm[n]:'?'; t[n]=0;
  int isf=(n>14 && t[n-6]=='.'&&t[n-5]=='f'&&t[n-4]=='d');
  if(ll && !isf){ lwh(GetTickCount()-llt0,8); lw(" OPEN "); lw(t); lw("\r\n"); }
  if(h!=(HANDLE)-1 && isf){ /* ...0xXXXXXXXX.fdata */
    u32 k=0; for(int j=n-14;j<n-6;j++){ char c=t[j]; k=k*16+(c<='9'?c-'0':(c|32)-'a'+10); }
    for(int i=0;i<256;i++) if(!fh[i].h||fh[i].h==h){ fh[i].key=k; fh[i].pos=0; fh[i].h=h; break; } }
  return h; }
static BOOL WINAPI hSF(HANDLE h,long long d,long long*np,DWORD m){
  long long p; BOOL r=oSF(h,d,&p,m); if(np)*np=p; int i=fslot(h); if(i>=0&&r) fh[i].pos=p; return r; }
static BOOL WINAPI hRF(HANDLE h,void*buf,DWORD n,DWORD*rd,void*ov){
  int i=fslot(h);
  if(i>=0 && ll){ long long off= ov ? (long long)(((u64)*(u32*)((u8*)ov+0x14)<<32)|*(u32*)((u8*)ov+0x10)) : fh[i].pos;
    if(firstseen(((u64)fh[i].key<<40)^(u64)off)){ lwh(GetTickCount()-llt0,8); lw(" READ "); lwh(fh[i].key,8); lw(" "); lwh((u64)off,10); lw(" "); lwh(n,8); lw("\r\n"); } }
  BOOL r=oRF(h,buf,n,rd,ov);
  if(i>=0 && !ov && r && rd) fh[i].pos+=*rd;
  return r; }
static void iatpatch(void*from,void*to){
  u8*p=base; u8*end=base+imgsz; u8 mbi[48];
  while(p<end){ if(!VirtualQuery(p,mbi,48))break; u8*rb=*(u8**)(mbi); u64 rs=*(u64*)(mbi+24); u32 st=*(u32*)(mbi+32), pr=*(u32*)(mbi+36);
    if(st==0x1000 && pr && !(pr&0x100) && !(pr&1)){ for(u64*q=(u64*)rb;(u8*)(q+1)<=rb+rs&&(u8*)(q+1)<=end;q++) if(*q==(u64)from){ DWORD old; VirtualProtect(q,8,4,&old); *q=(u64)to; VirtualProtect(q,8,old,&old); lw("  iat patched\r\n"); } }
    p=rb+rs; } }
static void loadlog(void){
  char fn[600]; path(fn,"WP10_loadlog.txt"); ll=CreateFileA(fn,0x40000000,1,0,2,0x80,0); if(ll==(HANDLE)-1){ll=0;return;}
  llt0=GetTickCount(); seen=VirtualAlloc(0,8ull<<20,0x3000,4); if(!seen){CloseHandle(ll);ll=0;return;}
  HANDLE k32=GetModuleHandleA("kernel32.dll"), kb=GetModuleHandleA("kernelbase.dll");
  void*rf=GetProcAddress(k32,"ReadFile"), *cf=GetProcAddress(k32,"CreateFileW"), *sf=GetProcAddress(k32,"SetFilePointerEx");
  oRF=(RFF)rf; oCF=(CFW)cf; oSF=(SFPE)sf;
  lw("load logger v1\r\n");
  iatpatch(rf,hRF); iatpatch(cf,hCF); iatpatch(sf,hSF);
  if(kb){ void*a=GetProcAddress(kb,"ReadFile"),*b=GetProcAddress(kb,"CreateFileW"),*c=GetProcAddress(kb,"SetFilePointerEx");
    if(a&&a!=rf) iatpatch(a,hRF); if(b&&b!=cf) iatpatch(b,hCF); if(c&&c!=sf) iatpatch(c,hSF); }
}

/* Japanese-locale typing fix: on code page 932 the ChatGPT helper's byte-by-byte full-width trick garbles letters (†, •).
   There, we turn each typed ASCII letter into one WM_IME_CHAR carrying the Shift-JIS full-width code, which the
   Japanese-locale ANSI window handles like real IME input. Other locales: untouched. */
static u8*gb; static HANDLE jphook; static DWORD gtid;
static u32 sjis(u64 c){
  if(c>='A'&&c<='Z') return 0x8260+(u32)(c-'A'); if(c>='a'&&c<='z') return 0x8281+(u32)(c-'a');
  if(c>='0'&&c<='9') return 0x824F+(u32)(c-'0'); if(c==' ') return 0x8140; if(c=='-') return 0x817C;
  if(c=='.') return 0x8144; if(c=='\'') return 0x8166; if(c==',') return 0x8143; if(c=='!') return 0x8149; if(c=='?') return 0x8148;
  return 0; }
static long long WINAPI jpproc(int code,u64 wp,long long lp){
  if(code>=0 && wp==1 && lp){ u8*m=(u8*)lp;
    if(*(u32*)(m+8)==0x102 && *(u64*)(m+0x18)!=0x57503031 && *(volatile u32*)(gb+0x7d590) && !*(volatile u32*)(gb+0x7d7f8) && !namebox && !IsWindowUnicode(*(HANDLE*)m)){
      u32 s=sjis(*(u64*)(m+0x10)); if(s){ *(u32*)(m+8)=0x286; *(u64*)(m+0x10)=s; *(u64*)(m+0x18)=1; } } }
  return CallNextHookEx(jphook,code,wp,lp); }
static BOOL WINAPI findwin(HANDLE h,long long x){ DWORD pid=0; DWORD t=GetWindowThreadProcessId(h,&pid);
  if(pid==GetCurrentProcessId() && IsWindowVisible(h)){ gtid=t; return 0; } return 1; }
static DWORD WINAPI jpworker(void*p){
  for(int i=0;i<600;i++){ if(*(volatile u64*)(gb+0x7d598)) break; Sleep(200); }
  if(!*(volatile u64*)(gb+0x7d598)){ lg("jp typing: helper hook not found\r\n"); return 0; }
  Sleep(500); gtid=0; EnumWindows(findwin,0);
  if(!gtid){ lg("jp typing: no window\r\n"); return 0; }
  jphook=SetWindowsHookExA(3,jpproc,0,gtid); lg(jphook?"jp typing fix on (code page 932)\r\n":"jp typing: hook failed\r\n"); return 0; }
#include "money_1011.inc"

/* ---- Race commentary voice: the speech engine (spcndevl.dll SpcnInsertText) is given each runner's name.
   With English names it receives letters it cannot pronounce, so NPC horses were not called out.
   We map English name words back to the katakana words of the game's own name dictionary and pass katakana. ---- */
typedef u8*(*NM2F)(u16*,int);
typedef u64(*TTSF)(u64,u64,u64,u64,u64,u64); static TTSF otts1,otts2;
static u8*kpool; static u32 kpos; static u32*khash; /* 65536 slots: en offset, ka offset (+1) */
static u32 hstr(const u8*s,int n){ u32 h=2166136261u; for(int i=0;i<n;i++){ u8 c=s[i]; if(c>='A'&&c<='Z')c+=32; h^=c; h*=16777619u; } return h; }
static int kbuilt;
typedef u8*(*CMPF)(u16*,u8*,int); typedef void(*CNVF)(const u8*,u8*,int);
static int en_of(const u8*c,u8*o){ int n=0; for(;*c&&n<60;c++){ u8 x=*c; if(x>=0x6b&&x<=0x84) o[n++]='A'+(x-0x6b); else if(x>=0x85&&x<=0x9e) o[n++]='a'+(x-0x85); else if(x==0x9f) o[n++]=' '; else return 0; } o[n]=0; return n; }
static void kbuild(void){
  kbuilt=1; kpool=VirtualAlloc(0,0x400000,0x3000,0x04); khash=VirtualAlloc(0,65536*8,0x3000,0x04); if(!kpool||!khash){kbuilt=2;return;}
  CMPF cmp=(CMPF)(base+0xa5370); CNVF cnv=(CNVF)(base+0xa3db0); u16 ids[2]; int n=0, dbg=0;
  /* two passes: the dictionary's main spelling of each word first (flag byte +0x43 != 7), then the
     alternative spellings, so e.g. Lucky reads ラッキー rather than the variant ラッキ */
  u8*drec=*(u8**)(base+0x402aef8);
  for(int pass=0;pass<2;pass++)
  for(u32 id=1; id<33894; id++){ ids[0]=(u16)id; ids[1]=0;
    if(drec){ int alt = drec[(u64)id*0x44+0x43]==0x07; if(alt!=pass) continue; } else if(pass) break;
    u8 ce[96],ck[96]; for(int i=0;i<96;i++){ce[i]=0;ck[i]=0;}
    gwraw=1; cmp(ids,ce,1); cmp(ids,ck,0); gwraw=0;
    { int a=0; while(ce[a]) a++; if(a>=2 && ce[a-2]==0x9f && ce[a-1]==0x6b) ce[a-2]=0; else continue;
      int b2=0; while(ck[b2]) b2++; if(b2>=1 && ck[b2-1]==0x02) ck[b2-1]=0; else continue; }
    u8 eb[64]; int el=en_of(ce,eb);
    { int a=0,b=0; while(ck[a]){ if(ck[a]<0xac||ck[a]>0xae) ck[b++]=ck[a]; a++; } ck[b]=0; } /* drop variant markers (shown as ①②③) */
    u8 kb[160]; for(int i=0;i<160;i++)kb[i]=0; int kl=0; if(ck[0]&&ck[0]<0x60){ cnv(ck,kb,0x30); while(kb[kl]&&kl<150) kl++; }
    if(0){ dbg++; lg("kdbg ");lgh(id,4);lg(" codes ");for(int i=0;i<12&&ce[i];i++)lgh(ce[i],2);lg(" en=");lg((const char*)eb);lg(" kcodes ");for(int i=0;i<8&&ck[i];i++)lgh(ck[i],2);lg(" ka=");lg((const char*)kb);lg("\r\n"); }
    if(el<1||kl<2) continue;
    if(kpos+el+kl+4>0x400000) break;
    u32 h=hstr(eb,el); u32 slot=h&0xffff; int tries=0; while(khash[slot*2] && tries<65536){ slot=(slot+1)&0xffff; tries++; } if(tries>=65536) break;
    u32 eo=kpos; for(int i=0;i<=el;i++) kpool[kpos++]=eb[i]; u32 ko=kpos; for(int i=0;i<=kl;i++) kpool[kpos++]=kb[i];
    khash[slot*2]=eo+1; khash[slot*2+1]=ko; n++; }
  lg("voice names: dictionary words mapped "); lgh(n,6); lg("\r\n"); }
static const u8* klook(const u8*s,int n){ u32 slot=hstr(s,n)&0xffff; for(int t=0;t<65536;t++){ u32 e=khash[slot*2]; if(!e) return 0; const u8*es=kpool+e-1; int ok=1;
    for(int i=0;i<n;i++){ u8 x=es[i],y=s[i]; if(x>='A'&&x<='Z')x+=32; if(y>='A'&&y<='Z')y+=32; if(x!=y){ok=0;break;} } if(ok&&!es[n]) return kpool+khash[slot*2+1]; slot=(slot+1)&0xffff; } return 0; }
static u8 kout[8][160]; static int kcur; static volatile long ttsl;
#include "kana_1011.inc"
static const u8* kd(const u8*w,int n){ if(!kbuilt) kbuild(); if(kbuilt!=1) return 0; return klook(w,n); }
static const u8* tokana(const u8*s){
  int L=0,ascii=1,alpha=0; while(s[L]&&L<120){ if(s[L]>=0x80) ascii=0; if((s[L]|32)>='a'&&(s[L]|32)<='z') alpha=1; L++; }
  if(!ascii||!alpha||s[L]) return 0; if(!kbuilt) kbuild(); if(kbuilt!=1) return 0;
  u8*o=kout[kcur]; kcur=(kcur+1)&7; int op=0; int i=0;
  while(i<L){ while(i<L&&s[i]==' ') i++; if(i>=L) break;
    int ends[4]; int ne=0; int j=i; while(j<L&&ne<4){ while(j<L&&s[j]!=' ') j++; ends[ne++]=j; while(j<L&&s[j]==' ') j++; }
    const u8*k=0; int used=0; for(int t=ne-1;t>=0;t--){ k=klook(s+i,ends[t]-i); if(k){used=ends[t];break;} }
    if(!k){ kdict=kd; int n=en2kana(s,o,150,0); return n?o:0; } while(*k&&op<150) o[op++]=*k++; i=used; }
  o[op]=0; return op?o:0; }
static volatile long ttsall;
static u64 htts1(u64 a,u64 b,u64 c,u64 d,u64 e,u64 f){ const u8*k=0; if(b>0x10000) k=tokana((const u8*)b);

  if(ttsl<40 && b>0x10000){ const u8*t=(const u8*)b; int asc=1; for(int i=0;t[i]&&i<80;i++) if(t[i]>=0x80) asc=0; if(asc){ ttsl++; lg(k?"voice name: ":"voice name MISS: ");lg((const char*)b);lg("\r\n"); } } return otts1(a,k?(u64)k:b,c,d,e,f); }
static u64 htts2(u64 a,u64 b,u64 c,u64 d,u64 e,u64 f){ const u8*k=0; if(b>0x10000) k=tokana((const u8*)b); return otts2(a,k?(u64)k:b,c,d,e,f); }
static int ieq(const char*a,const char*b){ for(;;a++,b++){ char c=*a; if(c>='A'&&c<='Z')c+=32; char e=*b; if(e>='A'&&e<='Z')e+=32; if(c!=e) return 0; if(!c) return 1; } }
/* ---- Reading box: when a horse is named in English, the game copies the name into the Reading box
   (obj+0x11c, 64 bytes; name pointer at obj+0xf0). The commentary voice speaks the Reading, so English
   letters were skipped. We fill the Reading with katakana made from the English name instead
   (9 characters max, same as the box). The player can still edit it. 5 copy sites in 1.0.4. ---- */
static volatile long rdl;
static void fixread(u8*obj){
  u8*dst=obj+0x11c; for(int i=0;i<64;i++) dst[i]=0;
  const u8*src=*(const u8**)(obj+0xf0); if(!src) return;
  int ascii=1,alpha=0,L=0; while(src[L]&&L<63){ if(src[L]>=0x80) ascii=0; if((src[L]|32)>='a'&&(src[L]|32)<='z') alpha=1; L++; }
  if(ascii&&alpha){ u8 k[64]; kdict=kd; int n=en2kana(src,k,40,9);
    if(n>0){ for(int i=0;i<=n;i++) dst[i]=k[i]; if(rdl<60){ rdl++; lg("reading auto: "); lg((const char*)src); lg(" -> "); lg((const char*)k); lg("\r\n"); } return; } }
  for(int i=0;i<L;i++) dst[i]=src[i]; }
static int midhook(u32 site,const u8*sig,u8 objreg,u32 back){
  u8*f=base+site; if(!eq(f,sig,13)) return 0;
  u8*t=VirtualAlloc(0,64,0x3000,0x40); if(!t) return 0; int k=0;
  static const u8 a[]={0x48,0x89,0xe0, 0x48,0x83,0xe4,0xf0, 0x50, 0x48,0x83,0xec,0x28};
  for(u32 i=0;i<sizeof a;i++) t[k++]=a[i];
  t[k++]=0x48; t[k++]=0x89; t[k++]=objreg;                 /* mov rcx,<obj> */
  t[k++]=0x48; t[k++]=0xb8; { u64 x=(u64)fixread; cpy(t+k,(u8*)&x,8); k+=8; }
  t[k++]=0xff; t[k++]=0xd0;                                /* call rax */
  t[k++]=0x48; t[k++]=0x83; t[k++]=0xc4; t[k++]=0x28; t[k++]=0x5c; /* add rsp,28; pop rsp */
  t[k++]=0x48; t[k++]=0xb8; { u64 x=(u64)(base+back); cpy(t+k,(u8*)&x,8); k+=8; }
  t[k++]=0xff; t[k++]=0xe0;
  DWORD old; VirtualProtect(f,13,0x40,&old);
  f[0]=0x48; f[1]=0xb8; { u64 x=(u64)t; cpy(f+2,(u8*)&x,8); } f[10]=0xff; f[11]=0xe0; f[12]=0x90;
  VirtualProtect(f,13,old,&old); return 1; }
static void reading_init(void){
  static const u8 sR[]={0x48,0x8d,0x8e,0x1c,0x01,0x00,0x00,0x0f,0x57,0xc0,0x0f,0x11,0x01};
  static const u8 sD[]={0x48,0x8d,0x97,0x1c,0x01,0x00,0x00,0x0f,0x57,0xc0,0x0f,0x11,0x02};
  static const u8 sB[]={0x48,0x8d,0x8b,0x1c,0x01,0x00,0x00,0x0f,0x57,0xc0,0x0f,0x11,0x01};
  int n=0;
  n+=midhook(0x68a05,sR,0xf1,0x68a41);
  n+=midhook(0x68e80,sR,0xf1,0x68eb1);
  n+=midhook(0x68f6e,sR,0xf1,0x68fa1);
  n+=midhook(0x6a2b1,sD,0xf9,0x6a2f2);
  n+=midhook(0x6aaaf,sB,0xd9,0x6aae1);
  lg("reading auto-fill sites hooked: "); lgh(n,2); lg(" of 5\r\n"); }
static void tts_init(void){
  static const u8 p6[]={0x48,0x83,0xec,0x28,0x44,0x8b,0xc2,0x48,0x8d,0x15};
  if(!eq(base+0x6b1a0,p6,10)){ lg("voice names: code differs - off\r\n"); return; }
  u8*b=base; u32 pe=*(u32*)(b+0x3c); u32 imp=*(u32*)(b+pe+0x90); if(!imp) return;
  for(u32*d=(u32*)(b+imp); d[3]; d+=5){ if(!ieq((const char*)(b+d[3]),"spcndevl.dll")) continue;
    u64*ilt=(u64*)(b+(d[0]?d[0]:d[4])); u64*iat=(u64*)(b+d[4]);
    for(int i=0; ilt[i]; i++){ if(ilt[i]>>63) continue; const char*fn=(const char*)(b+(u32)ilt[i]+2);
      int is1=ieq(fn,"SpcnInsertText"), is2=ieq(fn,"SpcnInsertTextWithAccent");
      if(is1||is2){ DWORD old; VirtualProtect(&iat[i],8,0x04,&old); if(is1){otts1=(TTSF)iat[i]; iat[i]=(u64)htts1;} else {otts2=(TTSF)iat[i]; iat[i]=(u64)htts2;} VirtualProtect(&iat[i],8,old,&old); } } }
  if(otts1) lg("voice names: English horse names spoken in katakana\r\n"); }

static char skip[64];
static int sk(char c){ for(int i=0;skip[i];i++) if(skip[i]==c) return 1; return 0; }
static DWORD WINAPI worker(void*p){
  DWORD t0=GetTickCount();
  { char fn[600]; path(fn,"WP10_EN_skip.txt"); HANDLE h=CreateFileA(fn,0x80000000,1,0,3,0x80,0); if(h!=(HANDLE)-1){ DWORD r=0; ReadFile(h,skip,63,&r,0); skip[r]=0; CloseHandle(h); lg("skip: "); lg(skip); lg("\r\n"); } }
  while(eq(base+0x1000,saved,64)){ if(GetTickCount()-t0>120000){lg("timeout\r\n");return 0;} SwitchToThread(); }
  loadlog();
  if(!sk('b')) { /* 1.0.4: five places read WMM bank 1 at a hard-coded file offset 0x4c00 (JP layout). Our English bank 1 starts later; use the real offset from the bank table. */
    u32 b1=0;
    static const u32 at[5]={0x329c7,0x34178,0x341bc,0x341e4,0x34347}; static const u32 want[5]={0x4c00,0x4c00,0x4c04,0x4c00,0x4c00};
    int ok=0; for(DWORD t1=GetTickCount(); GetTickCount()-t1<15000; SwitchToThread()){ ok=(base[0x329c6]==0xba&&base[0x34177]==0xba&&base[0x341b9]==0x8d&&base[0x341e3]==0x05&&base[0x34346]==0xba);
    for(int i=0;i<5;i++) if(*(u32*)(base+at[i])!=want[i]) ok=0;
      b1=*(volatile u32*)(base+0x3851608); if(ok && b1!=0x4c00) break; }
    if(ok && b1!=0x4c00){ for(int i=0;i<5;i++){ DWORD old; u8*q=base+at[i]; VirtualProtect(q,4,0x40,&old); *(u32*)q=b1+(want[i]-0x4c00); VirtualProtect(q,4,old,&old); }
      lg("WMM bank 1 offset fixed in 5 places: "); lgh(b1,8); lg("\r\n"); }
    else lg("WMM bank 1 offset not patched (code differs or not needed)\r\n"); }
  Sleep(4000);
  { /* 1.0.4: English for strings only referenced from code (lea rip+disp): put the text in a block near the exe and repoint the lea */
    char fn[600]; path(fn,"WP10_EN_code.bin"); HANDLE h=CreateFileA(fn,0x80000000,1,0,3,0x80,0);
    if(h!=(HANDLE)-1){ static u8 cb[65536]; DWORD r=0; ReadFile(h,cb,sizeof(cb),&r,0); CloseHandle(h);
      if(r>8 && eq(cb,(const u8*)"WPCR",4)){ u32 n=*(u32*)(cb+4); u8*blk=0;
        for(u64 a=((u64)base&~0xffffull)-0x10000; a>(u64)base-0x70000000ull; a-=0x10000){ blk=VirtualAlloc((void*)a,0x10000,0x3000,4); if(blk)break; }
        if(blk){ u32 used=0,done=0; u8*q=cb+8;
          for(u32 i=0;i<n;i++){ u32 rva=*(u32*)q; u32 L=*(u16*)(q+4); u8*s=q+6; q+=6+L;
            if(used+L>0x10000) break; cpy(blk+used,s,L); u8*p=base+rva;
            if((p[-3]==0x48||p[-3]==0x4c)&&p[-2]==0x8d){ long long d=(long long)(blk+used)-(long long)(p+4);
              if(d>-0x7fffffffLL && d<0x7fffffffLL){ DWORD old; VirtualProtect(p,4,0x40,&old); *(int*)p=(int)d; VirtualProtect(p,4,old,&old); done++; } }
            used+=L; }
          DWORD old; VirtualProtect(blk,0x10000,2,&old);
          lg("code-referenced strings relocated: "); lgh(done,4); lg("\r\n"); }
        else lg("no block near exe for code strings\r\n"); } } }
  if(!sk('m')) money_init(); if(!sk('t')) tts_init(); if(!sk('r')) reading_init();
  if(sk('n')) return 0;
  static const u8 pg[]={0x48,0x89,0x54,0x24,0x10,0x66,0x89,0x4c,0x24,0x08,0x48,0x83,0xec,0x38};
  static const u8 ps[]={0x48,0x89,0x54,0x24,0x10,0x66,0x89,0x4c,0x24,0x08,0x48,0x83,0xec,0x58};
  static const u8 pc[]={0x44,0x89,0x44,0x24,0x18,0x48,0x89,0x54,0x24,0x10};
  if(!eq(base+0x27eb50,pg,14)||!eq(base+0x201b50,ps,14)||!eq(base+0xa37f0,pc,10)){ lg("code bytes differ - long names NOT enabled\r\n"); return 0; }
  full=VirtualAlloc(0,NCUST*FL,0x3000,4); ctab=(u8**)(base+0x402af08); conv=(CONVF)(base+0xa37f0);
  loadfile();
  oget=(GETF)tramp(0x27eb50,14,hget); oset=(SETF)tramp(0x201b50,14,hset);
  lg("long horse names enabled (custom names up to 23 letters)\r\n");
  { static const u8 pv[]={0x48,0x89,0x5c,0x24,0x08,0x48,0x89,0x6c,0x24,0x10,0x48,0x89,0x74,0x24,0x18};
    static const u8 p6[]={0x48,0x89,0x4c,0x24,0x08,0x48,0x83,0xec,0x38,0x48,0x83,0x7c,0x24,0x40,0x00};
    static const u8 pi[]={0x48,0x83,0xec,0x38,0x44,0x89,0x4c,0x24,0x28,0x44,0x8b,0xca};
    static const u8 ph[]={0x83,0xbf,0x88,0x00,0x00,0x00,0x00,0x75,0xbd};
    static const u8 pds[]={0x48,0x89,0x5c,0x24,0x10,0x48,0x89,0x74,0x24,0x18,0x57,0x48,0x83,0xec,0x50};
    if(eq(base+0x27f20,pds,15)){ odset=(DSF)tramp(0x27f20,15,hdset); lg("name box clamp hooked\r\n"); }
    if(eq(base+0x85780,pv,15)){ oval=(VALF)tramp(0x85780,15,hval); lg("validator hooked\r\n"); }
    { u8*q=base+0x3ff59; if(q[0]==0x48&&q[1]==0x83&&q[2]==0xf8&&q[3]==0x04){ DWORD o; VirtualProtect(q,4,0x40,&o); q[3]=0x02; VirtualProtect(q,4,o,&o); lg("prefix min length 2 bytes\r\n"); } }
    if(eq(base+0xa6110,p6,15)){ o6110=(V6F)tramp(0xa6110,15,h6110); lg("check2 hooked\r\n"); }
    if(eq(base+0x27770,pi,12)){ oin=(INF)tramp(0x27770,12,hin); lg("input hooked\r\n"); }
    if(eq(base+0x247a7,ph,9)){ DWORD old; u8*f=base+0x247a7; VirtualProtect(f,2,0x40,&old); f[0]=0xeb; f[1]=0xe8; VirtualProtect(f,2,old,&old); lg("half-width typing allowed\r\n"); }
    { static const u8 pg[]={0x44,0x89,0x44,0x24,0x18,0x48,0x89,0x54,0x24,0x10,0x66,0x89,0x4c,0x24,0x08,0x48,0x83,0xec,0x68};
      if(!sk('g') && eq(base+0x25e680,pg,19)){ ogw=(GWF)tramp(0x25e680,15,hgw); lg("english horse names (katakana kept for custom race registration)\r\n"); }
      static const u8 pa[]={0x48,0x89,0x5c,0x24,0x10,0x48,0x89,0x6c,0x24,0x18,0x57,0x48,0x83,0xec,0x20};
      if(!sk('a') && eq(base+0x4b6cb0,pa,15)){ oadd=(ADDF)tramp(0x4b6cb0,15,hadd); lg("custom race runner names in English\r\n"); } } }
  return 0;
}
typedef long (WINAPI *DI8C)(void*,DWORD,void*,void**,void*);
__declspec(dllexport) long WINAPI DirectInput8Create(void*hinst,DWORD ver,void*riid,void**out,void*outer){
  DI8C f=gpt?(DI8C)GetProcAddress(gpt,"DirectInput8Create"):0; if(!f) return 0x80004005;
  return f(hinst,ver,riid,out,outer);
}
BOOL WINAPI DllMain(HANDLE inst,DWORD reason,void*r){
  if(reason==1){ base=(u8*)GetModuleHandleA(0); cpy(saved,base+0x1000,64);
    dirlen=GetModuleFileNameA(inst,dir,512); while(dirlen&&dir[dirlen-1]!='\\')dirlen--;
    char fn[600]; path(fn,"WP10_EN_long.log"); lf=CreateFileA(fn,0x40000000,1,0,2,0x80,0);
    lg("long-name add-on v5f for 1.0.1.1 (wraps dinput8_gpt.dll)\r\n");
    path(fn,"dinput8_gpt.dll"); gpt=LoadLibraryA(fn); lg(gpt?"ChatGPT loader loaded\r\n":"dinput8_gpt.dll NOT FOUND\r\n");
    if(gpt){ u8*m=(u8*)gpt; u32 pe=*(u32*)(m+0x3c); u32 imp=*(u32*)(m+pe+0x90);
      for(u8*d=m+imp; *(u32*)(d+12); d+=20){ const char*dll=(const char*)(m+*(u32*)(d+12));
        if((dll[0]|32)!='u')continue;
        u64*ilt=(u64*)(m+(*(u32*)d?*(u32*)d:*(u32*)(d+16))); u64*iat=(u64*)(m+*(u32*)(d+16));
        for(int i=0;ilt[i];i++){ if(ilt[i]>>63)continue; const char*nm=(const char*)(m+(u32)ilt[i]+2);
          if(eq((const u8*)nm,(const u8*)"GetAsyncKeyState",17)){ DWORD old; VirtualProtect(&iat[i],8,4,&old); iat[i]=(u64)fakekey; VirtualProtect(&iat[i],8,old,&old); lg("typing toggle hooked\r\n"); } } } }
    { u32 pe=*(u32*)(base+0x3c); imgsz=*(u32*)(base+pe+0x50); AddVectoredExceptionHandler(0,crashh); lg("crash catcher on\r\n"); }
    if(gpt && GetACP()==932){ static const u8 gsig[]={0x83,0x3d,0x35,0xa3,0x07,0x00,0x00}; if(eq((u8*)gpt+0x3254,gsig,7)){ gb=(u8*)gpt; CreateThread(0,0,jpworker,0,0,0); } else lg("jp typing: helper version differs\r\n"); }
    CreateThread(0,0,worker,0,0,0); }
  return 1;
}
