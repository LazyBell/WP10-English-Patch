typedef unsigned char u8; typedef unsigned int u32; typedef unsigned long long u64;
typedef void* HANDLE; typedef int BOOL; typedef unsigned long DWORD;
#define WINAPI __stdcall
__declspec(dllimport) HANDLE WINAPI GetModuleHandleA(const char*);
__declspec(dllimport) DWORD WINAPI GetModuleFileNameA(HANDLE,char*,DWORD);
__declspec(dllimport) HANDLE WINAPI CreateFileA(const char*,DWORD,DWORD,void*,DWORD,DWORD,HANDLE);
__declspec(dllimport) BOOL WINAPI WriteFile(HANDLE,const void*,DWORD,DWORD*,void*);
__declspec(dllimport) BOOL WINAPI CloseHandle(HANDLE);
__declspec(dllimport) HANDLE WINAPI CreateThread(void*,u64,DWORD (WINAPI*)(void*),void*,DWORD,DWORD*);
__declspec(dllimport) void WINAPI Sleep(DWORD);
__declspec(dllimport) HANDLE WINAPI LoadLibraryA(const char*);
__declspec(dllimport) void* WINAPI GetProcAddress(HANDLE,const char*);
__declspec(dllimport) u32 WINAPI GetSystemDirectoryA(char*,u32);
static u8*base; static u8 saved[256]; static char dir[600]; static u32 dirlen;
static void path(char*o,const char*n){u32 i;for(i=0;i<dirlen;i++)o[i]=dir[i];u32 j=0;while(n[j])o[i++]=n[j++];o[i]=0;}
static void wr(const char*name,const void*p,u64 n){char fn[700];path(fn,name);HANDLE h=CreateFileA(fn,0x40000000,0,0,2,0x80,0);if(h==(HANDLE)-1)return;
  const u8*q=(const u8*)p;while(n){DWORD w,c=n>0x1000000?0x1000000:(DWORD)n;WriteFile(h,q,c,&w,0);q+=c;n-=c;}CloseHandle(h);}
static DWORD WINAPI worker(void*x){
  u32 pe=*(u32*)(base+0x3c); u32 soi=*(u32*)(base+pe+0x50);
  for(int i=0;i<1200;i++){ int ch=0; for(int k=0;k<256;k++) if(base[0x1000+k]!=saved[k]){ch=1;break;} if(ch) break; Sleep(50); }
  Sleep(8000);
  wr("WP10_dump104.bin",base,soi);
  wr("WP10_dump104.done","ok",2);
  return 0;
}
static HANDLE real;
typedef long (WINAPI *DI8C)(void*,DWORD,void*,void**,void*);
__declspec(dllexport) long WINAPI DirectInput8Create(void*hinst,DWORD ver,void*riid,void**out,void*outer){
  if(!real){char s[600];u32 n=GetSystemDirectoryA(s,520);const char*x="\\dinput8.dll";u32 j=0;while(x[j])s[n++]=x[j++];s[n]=0;real=LoadLibraryA(s);}
  DI8C f=(DI8C)GetProcAddress(real,"DirectInput8Create"); if(!f) return 0x80004005;
  return f(hinst,ver,riid,out,outer);
}
BOOL WINAPI DllMain(HANDLE inst,DWORD reason,void*r){
  if(reason==1){ base=(u8*)GetModuleHandleA(0); for(int k=0;k<256;k++) saved[k]=base[0x1000+k];
    dirlen=GetModuleFileNameA(inst,dir,512); while(dirlen&&dir[dirlen-1]!='\\')dirlen--;
    CreateThread(0,0,worker,0,0,0); }
  return 1;
}
