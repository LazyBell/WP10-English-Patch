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
static int hval(u8*s,int mode){ int r=oval(s,mode); int a=asciiname(s); lg("VALIDATE ret ");lgh((u64)((u8*)__builtin_return_address(0)-base),8);lg(" mode ");lgh(mode,2);lg(" ");lgs(s);lg(" game says ");lgh(r,2); if(!r&&a){ r=1; lg(" -> allowed (English)"); } lg("\r\n"); return r; }
static int h6110(u8*s){ int r=o6110(s); lg("CHECK2 ret ");lgh((u64)((u8*)__builtin_return_address(0)-base),8);lg(" ");lgs(s);lg(" -> ");lgh(r,2);lg("\r\n"); return r; }
static volatile DWORD pulse_until; static volatile int namebox;
typedef void(*DSF)(u64,u64,u64,u64,u64,u64,u64,u64,u64,u64); static DSF odset;
static void hdset(u64 a1,u64 a2,u64 a3,u64 a4,u64 a5,u64 a6,u64 a7,u64 a8,u64 a9,u64 a10){ odset(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10); if(namebox){ u8*dlg=(u8*)a1; *(u32*)(dlg+0x100)=0x13; *(u32*)(dlg+0x383c)=0x12; } }
static short WINAPI fakekey(int vk){ if(vk==0x76 && GetTickCount()<pulse_until) return (short)0x8000; return GetAsyncKeyState(vk); }
static int hin(u8*buf,int maxb,int a,int b){
  u8*ra=(u8*)__builtin_return_address(0);
  lg("INPUT ret ");lgh((u64)(ra-base),8);lg(" max ");lgh(maxb,2);lg(" before ");lgs(buf);
  if(ra!=base+0x82656 || maxb!=0x13){ int r=oin(buf,maxb,a,b); lg(" after ");lgs(buf);lg(" ret ");lgh((u32)r,8);lg("\r\n"); return r; }
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
  f[0]=0x48;f[1]=0xb8; u64 h=(u64)hookfn; cpy(f+2,(u8*)&h,8); f[10]=0xff;f[11]=0xe0; for(u32 i=12;i<n;i++)f[i]=0x90;
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
  for(int i=0;i<4096&&k<48&&(u64)(sp+i+1)<=top;i++){ u64 v=sp[i]; if(v>(u64)base+0x1000&&v<(u64)base+0x2a17000){ cw(h,k%6?" ":"\r\n ");ch(h,v-(u64)base,8);k++; } }
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
static DWORD WINAPI worker(void*p){
  DWORD t0=GetTickCount();
  while(eq(base+0x1000,saved,64)){ if(GetTickCount()-t0>120000){lg("timeout\r\n");return 0;} SwitchToThread(); }
  loadlog();
  { /* 1.0.4: five places read WMM bank 1 at a hard-coded file offset 0x4c00 (JP layout). Our English bank 1 starts later; use the real offset from the bank table. */
    u32 b1=0;
    static const u32 at[5]={0x32ad7,0x34288,0x342cc,0x342f4,0x34457}; static const u32 want[5]={0x4c00,0x4c00,0x4c04,0x4c00,0x4c00};
    int ok=0; for(DWORD t1=GetTickCount(); GetTickCount()-t1<15000; SwitchToThread()){ ok=(base[0x32ad6]==0xba&&base[0x34287]==0xba&&base[0x342c9]==0x8d&&base[0x342f3]==0x05&&base[0x34456]==0xba);
    for(int i=0;i<5;i++) if(*(u32*)(base+at[i])!=want[i]) ok=0;
      b1=*(volatile u32*)(base+0x3868628); if(ok && b1!=0x4c00) break; }
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
  static const u8 pg[]={0x48,0x89,0x54,0x24,0x10,0x66,0x89,0x4c,0x24,0x08,0x48,0x83,0xec,0x38};
  static const u8 ps[]={0x48,0x89,0x54,0x24,0x10,0x66,0x89,0x4c,0x24,0x08,0x48,0x83,0xec,0x58};
  static const u8 pc[]={0x44,0x89,0x44,0x24,0x18,0x48,0x89,0x54,0x24,0x10};
  if(!eq(base+0x28a350,pg,14)||!eq(base+0x2038c0,ps,14)||!eq(base+0xa3af0,pc,10)){ lg("code bytes differ - long names NOT enabled\r\n"); return 0; }
  full=VirtualAlloc(0,NCUST*FL,0x3000,4); ctab=(u8**)(base+0x4042678); conv=(CONVF)(base+0xa3af0);
  loadfile();
  oget=(GETF)tramp(0x28a350,14,hget); oset=(SETF)tramp(0x2038c0,14,hset);
  lg("long horse names enabled (custom names up to 23 letters)\r\n");
  { static const u8 pv[]={0x48,0x89,0x5c,0x24,0x08,0x48,0x89,0x6c,0x24,0x10,0x48,0x89,0x74,0x24,0x18};
    static const u8 p6[]={0x48,0x89,0x4c,0x24,0x08,0x48,0x83,0xec,0x38,0x48,0x83,0x7c,0x24,0x40,0x00};
    static const u8 pi[]={0x48,0x83,0xec,0x38,0x44,0x89,0x4c,0x24,0x28,0x44,0x8b,0xca};
    static const u8 ph[]={0x83,0xbf,0x88,0x00,0x00,0x00,0x00,0x75,0xbd};
    static const u8 pds[]={0x48,0x89,0x5c,0x24,0x10,0x48,0x89,0x74,0x24,0x18,0x57,0x48,0x83,0xec,0x50};
    if(eq(base+0x28030,pds,15)){ odset=(DSF)tramp(0x28030,15,hdset); lg("name box clamp hooked\r\n"); }
    if(eq(base+0x858a0,pv,15)){ oval=(VALF)tramp(0x858a0,15,hval); lg("validator hooked\r\n"); }
    if(eq(base+0xa6410,p6,15)){ o6110=(V6F)tramp(0xa6410,15,h6110); lg("check2 hooked\r\n"); }
    if(eq(base+0x27880,pi,12)){ oin=(INF)tramp(0x27880,12,hin); lg("input hooked\r\n"); }
    if(eq(base+0x248b7,ph,9)){ DWORD old; u8*f=base+0x248b7; VirtualProtect(f,2,0x40,&old); f[0]=0xeb; f[1]=0xe8; VirtualProtect(f,2,old,&old); lg("half-width typing allowed\r\n"); } }
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
    lg("long-name add-on v4h (wraps dinput8_gpt.dll)\r\n");
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
