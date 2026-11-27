// WP10 English patch: launcher / launch-settings translation add-on.
// Loaded by WP10_2026_Launcher.exe and WP10_2026_Config.exe as msimg32.dll (both import it).
// Forwards msimg32 calls to the real system DLL. Exe files are not modified on disk:
// button pictures are swapped in memory and window text is translated as windows are created.
typedef unsigned int u32; typedef unsigned short u16; typedef unsigned char u8;
typedef int BOOL; typedef void* HANDLE; typedef unsigned long DWORD; typedef long LONG;
typedef unsigned int WPARAM; typedef long LPARAM; typedef long LRESULT; typedef u16 WCHAR;
#define WINAPI __stdcall
__declspec(dllimport) HANDLE WINAPI GetModuleHandleW(const WCHAR*);
__declspec(dllimport) DWORD WINAPI GetModuleFileNameW(HANDLE,WCHAR*,DWORD);
__declspec(dllimport) HANDLE WINAPI LoadLibraryW(const WCHAR*);
__declspec(dllimport) void* WINAPI GetProcAddress(HANDLE,const char*);
__declspec(dllimport) u32 WINAPI GetSystemDirectoryW(WCHAR*,u32);
__declspec(dllimport) HANDLE WINAPI FindResourceW(HANDLE,const WCHAR*,const WCHAR*);
__declspec(dllimport) HANDLE WINAPI LoadResource(HANDLE,HANDLE);
__declspec(dllimport) void* WINAPI LockResource(HANDLE);
__declspec(dllimport) DWORD WINAPI SizeofResource(HANDLE,HANDLE);
__declspec(dllimport) BOOL WINAPI VirtualProtect(void*,u32,DWORD,DWORD*);
__declspec(dllimport) BOOL WINAPI FlushInstructionCache(HANDLE,const void*,u32);
__declspec(dllimport) HANDLE WINAPI GetCurrentProcess(void);
__declspec(dllimport) DWORD WINAPI GetCurrentThreadId(void);
__declspec(dllimport) HANDLE WINAPI GetProcessHeap(void);
__declspec(dllimport) void* WINAPI HeapAlloc(HANDLE,DWORD,u32);
__declspec(dllimport) HANDLE WINAPI CreateFileW(const WCHAR*,DWORD,DWORD,void*,DWORD,DWORD,HANDLE);
__declspec(dllimport) BOOL WINAPI WriteFile(HANDLE,const void*,DWORD,DWORD*,void*);
__declspec(dllimport) DWORD WINAPI SetFilePointer(HANDLE,LONG,LONG*,DWORD);
__declspec(dllimport) BOOL WINAPI CloseHandle(HANDLE);
__declspec(dllimport) int WINAPI WideCharToMultiByte(u32,DWORD,const WCHAR*,int,char*,int,const char*,BOOL*);
__declspec(dllimport) HANDLE WINAPI SetWindowsHookExW(int,LRESULT (WINAPI*)(int,WPARAM,LPARAM),HANDLE,DWORD);
__declspec(dllimport) LRESULT WINAPI CallNextHookEx(HANDLE,int,WPARAM,LPARAM);
__declspec(dllimport) LONG WINAPI SetWindowLongW(HANDLE,int,LONG);
__declspec(dllimport) LRESULT WINAPI CallWindowProcW(void*,HANDLE,u32,WPARAM,LPARAM);
__declspec(dllimport) BOOL WINAPI SetPropW(HANDLE,const WCHAR*,HANDLE);
__declspec(dllimport) HANDLE WINAPI GetPropW(HANDLE,const WCHAR*);
__declspec(dllimport) int WINAPI GetClassNameW(HANDLE,WCHAR*,int);

void* __cdecl memcpy(void*d,const void*s,u32 n){u8*a=d;const u8*b=s;while(n--)*a++=*b++;return d;}
void* __cdecl memset(void*d,int c,u32 n){u8*a=d;while(n--)*a++=(u8)c;return d;}

// ---------------- msimg32 forwarding ----------------
void *pAlphaBlend,*pGradientFill,*pTransparentBlt,*pvSetDdrawflag,*pDllInitialize;
__attribute__((naked)) void AlphaBlend(void){ __asm__("jmpl *_pAlphaBlend"); }
__attribute__((naked)) void GradientFill(void){ __asm__("jmpl *_pGradientFill"); }
__attribute__((naked)) void TransparentBlt(void){ __asm__("jmpl *_pTransparentBlt"); }
__attribute__((naked)) void vSetDdrawflag(void){ __asm__("jmpl *_pvSetDdrawflag"); }
__attribute__((naked)) void DllInitialize(void){ __asm__("jmpl *_pDllInitialize"); }
static BOOL WINAPI dummy3(void*a,DWORD b,void*c){return 1;}
static void load_real(void){
    WCHAR p[300]; u32 n=GetSystemDirectoryW(p,260); const WCHAR*s=L"\\msimg32.dll";
    while(*s) p[n++]=*s++; p[n]=0;
    HANDLE h=LoadLibraryW(p);
    pAlphaBlend=GetProcAddress(h,"AlphaBlend"); pGradientFill=GetProcAddress(h,"GradientFill");
    pTransparentBlt=GetProcAddress(h,"TransparentBlt"); pvSetDdrawflag=GetProcAddress(h,"vSetDdrawflag");
    pDllInitialize=GetProcAddress(h,"DllInitialize"); if(!pDllInitialize) pDllInitialize=(void*)dummy3;
    if(!pvSetDdrawflag) pvSetDdrawflag=(void*)dummy3;
}

// ---------------- helpers ----------------
static HANDLE g_self; static int g_isconfig;
static int wlen(const WCHAR*s){int n=0;while(s[n])n++;return n;}
static int weq(const WCHAR*a,const WCHAR*b){while(*a&&*a==*b){a++;b++;}return *a==*b;}
static int hasjp(const WCHAR*s){for(;*s;s++) if((*s>=0x3000&&*s<=0x30ff)||(*s>=0x4e00&&*s<=0x9fff)||(*s>=0xff01&&*s<=0xff5e)) return 1; return 0;}
static int is_str(const void*p){ return p && ((u32)p>0xffff) && *(const WCHAR*)p!=0xffff; }

// log of any Japanese text we did not translate; only written if WP10_EN_launcher.log already exists
static int g_logn;
static void logw(const char*tag,const WCHAR*s){
    if(g_logn++>200) return;
    WCHAR path[300]; DWORD n=GetModuleFileNameW(0,path,260); while(n&&path[n-1]!='\\') n--;
    const WCHAR*f=L"WP10_EN_launcher.log"; while(*f) path[n++]=*f++; path[n]=0;
    HANDLE h=CreateFileW(path,4/*FILE_APPEND_DATA*/,3,0,3/*OPEN_EXISTING: only logs if the file is there*/,0x80,0);
    if(h==(HANDLE)-1) return;
    char b[1200]; int k=0; while(*tag) b[k++]=*tag++; b[k++]=' ';
    k+=WideCharToMultiByte(65001,0,s,-1,b+k,1000,0,0); if(k>0&&b[k-1]==0) k--;
    b[k++]='\r'; b[k++]='\n'; DWORD w; SetFilePointer(h,0,0,2); WriteFile(h,b,k,&w,0); CloseHandle(h);
}

// ---------------- translation table ----------------
// whole-string matches first, then substring replacements.
static const WCHAR* const WHOLE[][2]={
  {L"画面サイズ",L"Resolution"},                       // 画面サイズ
  {L"フルスクリーンにする",L"Full screen"}, // フルスクリーンにする
  {L"ムービーを再生する",L"Play movies"},       // ムービーを再生する
  {L"サウンドを聴く",L"Play sound"},                     // サウンドを聴く
  {L"画質",L"Quality"},                                                     // 画質
  {L"初期化",L"Defaults"},                                              // 初期化
  {L"決定",L"OK"},                                                          // 決定
  {L"中止",L"Cancel"},                                                      // 中止
  {L"基本設定",L"Basic Settings"},                                  // 基本設定
  {L"高品質(画質優先)",L"Ultra"},                       // 高品質(画質優先)
  {L"高品質(速度優先)",L"High"},                        // 高品質(速度優先)
  {L"標準品質(画質優先)",L"Medium"},                // 標準品質(画質優先)
  {L"標準品質(速度優先)",L"Low"},                   // 標準品質(速度優先)
  {L"最軽量品質",L"Lowest"},                                    // 最軽量品質
  {L"バージョン情報",L"About"},                         // バージョン情報
  {L"公式サイト：",L"Official website:"},                   // 公式サイト：
  {L"現在の画面サイズでは起動できません",
   L"The game can't start at the current screen size.\nPlease choose a smaller resolution."}, // 現在の画面サイズでは起動できません
  {L"URLのコピー",L"Copy URL"},
  {0,0}};
static const WCHAR* const SUBS[][2]={
  {L"本体が起動している場合は、\n設定の変更は出来ません",
   L" is running.\nSettings can't be changed while the game is running."},   // 本体が起動している場合は、\n設定の変更は出来ません
  {L"起動環境設定",L"Launch Settings"},             // 起動環境設定
  {L"バージョン情報",L"About"},
  {L"バージョン：",L"Version:"},                    // バージョン：
  {L"株式会社　コーエーテクモゲームス",L"KOEI TECMO GAMES CO., LTD."},
  {L"コーエーテクモゲームス",L"KOEI TECMO GAMES"},
  {L"推奨",L"recommended"},                                         // 推奨
  {L"『",L""},{L"』",L""},                                           // 『 』
  {L"（",L" ("},{L"）",L")"},{L"　",L" "},{L"×",L"x"},
  {0,0}};

static WCHAR* walloc(int n){return (WCHAR*)HeapAlloc(GetProcessHeap(),0,(u32)(n+1)*2);}
// returns translated copy or 0 if nothing to do
static const WCHAR* tr(const WCHAR*s){
    if(!is_str(s)||!hasjp(s)) return 0;
    for(int i=0;WHOLE[i][0];i++) if(weq(s,WHOLE[i][0])) return WHOLE[i][1];
    int n=wlen(s); WCHAR*cur=walloc(n); memcpy(cur,s,(u32)(n+1)*2); int changed=0;
    for(int i=0;SUBS[i][0];i++){
        const WCHAR*f=SUBS[i][0],*r=SUBS[i][1]; int fl=wlen(f),rl=wlen(r),cl=wlen(cur),cnt=0;
        for(int k=0;k+fl<=cl;k++){int j=0;while(j<fl&&cur[k+j]==f[j])j++; if(j==fl){cnt++;k+=fl-1;}}
        if(!cnt) continue;
        WCHAR*o=walloc(cl+cnt*(rl>fl?rl-fl:0)); int a=0;
        for(int k=0;k<cl;){int j=0;while(j<fl&&k+j<cl&&cur[k+j]==f[j])j++;
            if(j==fl){for(int q=0;q<rl;q++)o[a++]=r[q];k+=fl;} else o[a++]=cur[k++];}
        o[a]=0; cur=o; changed=1;
    }
    if(hasjp(cur)) logw("untranslated:",s);
    return changed?cur:0;
}

// ---------------- control layout tweaks for the settings page (dialog units) ----------------
typedef struct { short x,y,cx,cy; } R;
typedef struct { u32 id; R orig,neu; } LAY;
static const LAY LAYOUT[]={
  {1028,{7,10,40,8},{7,10,44,8}},     // Resolution label
  {1029,{52,8,82,146},{54,8,82,146}}, // resolution combo
  {1009,{7,24,63,10},{7,24,80,10}},   // Full screen
  {1011,{7,38,63,10},{7,38,80,10}},   // Play movies
  {1010,{7,52,60,10},{7,52,58,10}},   // Play sound
  {1032,{70,52,80,10},{68,52,28,10}}, // Quality label
  {1031,{88,50,70,146},{98,50,60,146}},// quality combo
  {0}};

typedef struct { void* params; HANDLE hInst; void* hMenu; HANDLE parent; int cy,cx,y,x; LONG style; const WCHAR* name; const WCHAR* cls; DWORD exst; } CS;
typedef struct { CS* lpcs; HANDLE after; } CBTCW;

static const WCHAR PROP[]=L"WP10ENold";
static LRESULT WINAPI subproc(HANDLE h,u32 m,WPARAM w,LPARAM l){
    void*old=GetPropW(h,PROP);
    const WCHAR*t;
    switch(m){
    case 0x000C: /*WM_SETTEXT*/ if((t=tr((const WCHAR*)l))) l=(LPARAM)t; break;
    case 0x0081: /*WM_NCCREATE*/ case 0x0001: /*WM_CREATE*/ {
        CS*cs=(CS*)l; if(cs&&(t=tr(cs->name))){ static CS c2; c2=*cs; c2.name=t; l=(LPARAM)&c2; } break; }
    case 0x0143: case 0x014A: case 0x0180: case 0x0181: /*CB/LB add/insert*/
        if((t=tr((const WCHAR*)l))) l=(LPARAM)t; break;
    case 0x133E: case 0x133D: { /*TCM_INSERTITEMW / TCM_SETITEMW*/
        struct {u32 mask,st,stm; WCHAR*txt; int cch,img; LPARAM lp;} *it=(void*)l, c;
        if(it&&(it->mask&1)&&(t=tr(it->txt))){ c=*it; c.txt=(WCHAR*)t; return CallWindowProcW(old,h,m,w,(LPARAM)&c);} break; }
    }
    return CallWindowProcW(old,h,m,w,l);
}
static HANDLE g_hook;
static LRESULT WINAPI cbt(int code,WPARAM w,LPARAM l){
    if(code==3 /*HCBT_CREATEWND*/){
        HANDLE h=(HANDLE)w; CS*cs=((CBTCW*)l)->lpcs;
        const WCHAR*t=tr(cs->name); if(t) cs->name=t;
        if(g_isconfig&&(cs->style&0x40000000) /*WS_CHILD*/){
            u32 id=(u32)cs->hMenu;
            for(int i=0;LAYOUT[i].id;i++) if(LAYOUT[i].id==id){
                const LAY*L=&LAYOUT[i];
                // pixels per dialog unit from this control's own size
                int sx=cs->cx*1000/L->orig.cx, sy=cs->cy*1000/L->orig.cy;
                int x0=cs->x-L->orig.x*sx/1000, y0=cs->y-L->orig.y*sy/1000;
                cs->x=x0+L->neu.x*sx/1000; cs->y=y0+L->neu.y*sy/1000;
                cs->cx=L->neu.cx*sx/1000; cs->cy=L->neu.cy*sy/1000;
            }
        }
        void*old=(void*)SetWindowLongW(h,-4 /*GWL_WNDPROC*/,(LONG)subproc);
        if(old) SetPropW(h,PROP,old); else SetWindowLongW(h,-4,(LONG)old);
    }
    return CallNextHookEx(g_hook,code,w,l);
}

// ---------------- MessageBoxW hot-patch (box size is measured from the text, so translate first) ----------------
typedef int (WINAPI*MBW)(HANDLE,const WCHAR*,const WCHAR*,u32);
static MBW mb_orig;
static int WINAPI mb_hook(HANDLE h,const WCHAR*t,const WCHAR*c,u32 f){
    const WCHAR*a=tr(t),*b=tr(c); return mb_orig(h,a?a:t,b?b:c,f);
}
static void hook_mb(void){
    u8*f=(u8*)GetProcAddress(GetModuleHandleW(L"user32.dll"),"MessageBoxW"); if(!f) return;
    // hot-patchable prologue: mov edi,edi; push ebp; mov ebp,esp  with 5 bytes of padding before
    if(!(f[0]==0x8b&&f[1]==0xff)) return;
    for(int i=1;i<=5;i++) if(f[-i]!=0xcc&&f[-i]!=0x90) return;
    DWORD op; if(!VirtualProtect(f-5,7,0x40,&op)) return;
    f[-5]=0xe9; *(u32*)(f-4)=(u32)((u8*)mb_hook-(f));
    mb_orig=(MBW)(f+2);
    *(volatile u16*)f=0xf9eb; // jmp short -7
    VirtualProtect(f-5,7,op,&op); FlushInstructionCache(GetCurrentProcess(),f-5,7);
}

// ---------------- button pictures (same size, swapped in memory) ----------------
static const WCHAR* const BMPS[]={
 L"IDB_CONFIG_D",L"IDB_CONFIG_F",L"IDB_CONFIG_U",L"IDB_DLCONTENTS_D",L"IDB_DLCONTENTS_F",L"IDB_DLCONTENTS_U",
 L"IDB_FIRST_D",L"IDB_FIRST_F",L"IDB_FIRST_U",L"IDB_ITEMSTORE_D",L"IDB_ITEMSTORE_F",L"IDB_ITEMSTORE_U",
 L"IDB_MANUAL_D",L"IDB_MANUAL_F",L"IDB_MANUAL_U",L"IDB_QUESTION_D",L"IDB_QUESTION_F",L"IDB_QUESTION_U",
 L"IDB_SITE_D",L"IDB_SITE_F",L"IDB_SITE_U",L"IDB_START_D",L"IDB_START_F",L"IDB_START_U",
 L"IDB_SUPPORT_D",L"IDB_SUPPORT_F",L"IDB_SUPPORT_U",0};
static void swap_bitmaps(void){
    HANDLE exe=GetModuleHandleW(0);
    for(int i=0;BMPS[i];i++){
        HANDLE a=FindResourceW(exe,BMPS[i],(const WCHAR*)2 /*RT_BITMAP*/); if(!a) continue;
        HANDLE b=FindResourceW(g_self,BMPS[i],(const WCHAR*)10 /*RT_RCDATA*/); if(!b) continue;
        u32 sa=SizeofResource(exe,a), sb=SizeofResource(g_self,b); if(sa!=sb) continue;
        u8*pa=LockResource(LoadResource(exe,a)); u8*pb=LockResource(LoadResource(g_self,b));
        if(!pa||!pb) continue;
        DWORD op; if(!VirtualProtect(pa,sa,0x04 /*RW*/,&op)) continue;
        memcpy(pa,pb,sa); VirtualProtect(pa,sa,op,&op);
    }
}

BOOL WINAPI DllMain(HANDLE h,DWORD reason,void*r){
    if(reason==1){
        g_self=h; load_real();
        { WCHAR p[300]; DWORD n=GetModuleFileNameW(0,p,260); p[n]=0; for(DWORD i=0;i+6<=n;i++){ if((p[i]|32)=='c'&&(p[i+1]|32)=='o'&&(p[i+2]|32)=='n'&&(p[i+3]|32)=='f'&&(p[i+4]|32)=='i'&&(p[i+5]|32)=='g') g_isconfig=1; } }
        swap_bitmaps();
        hook_mb();
        g_hook=SetWindowsHookExW(5 /*WH_CBT*/,cbt,0,GetCurrentThreadId());
    }
    return 1;
}
