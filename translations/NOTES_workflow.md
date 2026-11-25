# WP10 translation workflow (as of 2026-11-21)
## Data (DATA.UNB) - all via `timeout 175 python3 ~/tools/unbapply.py`
Applies every ~/work/unb_patches_*.json (in-place) + relocates race-name tables (racebuild.go: entries 244/504/573) to end of DATA.UNB and writes mod DATA.UNH.
- people: pplbuild.py -> unb_patches_people.json (people_en.json manual katakana; kalign.py splits kanji names)
- lines: sire lines; racehist: 0562 legend races; course: coursebuild.py (0491 course names/notes, course_en.txt)
- stud: studbuild.py (38x204 stud farms); fame: famebuild.py (105x1108 family mares + 237x32 surname list)
- races: race_en.json (2781 names, r1-r4.txt) -> racebuild.py (long/short/tiny 6-byte)
Not done: 8INI name pools (0076 surnames, 0344 given names) - 7-byte kanji field too small for romaji (new generated people stay JP). 0552 commentary script (TTS, leave). 0527 netkeiba CSV (not shown).
## Dialogue (WMM)
- todo_segs.json = snapshot of untranslated unique segments (79,718 at start). `python3 ~/tools/sb.py show N START` prints id=JP (non-risky only); write id=English lines to sbN.txt; `python3 ~/tools/sb.py apply sbN.txt` -> segdict.json.
- Risky short segments (<=5 chars) need ctx per message (merge.py / ctx.json) - handle per bank later.
- Then `python3 ~/tools/wmmapply.py` (needs Eden closed) to write WMM.DAT.
- Conventions: N万円 -> "N" + "0K yen"; fragments around variables start/end with space.
## Exe strings: all 4737 done (translations.json). WCM essays: not started.
- Bank 5 = race commentary read by TTS: skipped (kept Japanese) via SKIPB in sb.py
- TODO exe: translations.json 宿敵='Nemsis' typo -> Nemesis; race-type menu terms (Sprint/Grind/Grinder) inconsistent with WMM (Burst/Stamina/Grind)
## 2026-11-22 session
- Data traits (data_tr.json) done: 0-599 + 1249-1313; 600-1248 are internal debug/event-condition labels (not shown) - skipped.
- People/owners rebuilt (pplbuild+ownfix+unbapply). Race tiny names now <=4 chars (racebuild.tiny).
- WMM: SEG regex now allows leading \x0a (caught 4 missed lines); wmmapply.space() auto-adds spaces around <02> variable inserts.
- Honorifics stripped (-chan/-san/-kun/-sama). Money in dialogue -> USD ("0K yen" -> "00 dollars", var+" yen" -> var only since exe formats $).
- Umasona names normalised to segdict bare names (New Places O/X, Busy Schedule O/X, Umasonality).
- WMM.DAT can be written while Eden runs (build to WMM_new.DAT then cp); game must be restarted.
- TODO: UmasonaInfo/HistoricalTrainingInfo.bin are encrypted (same 32-byte header) - umasona descriptions/historic training text likely there.
- TODO: foal name "Linda Linda19" (exe '%s%02d' 7 bytes / 'の' at ro 771339 untranslated), Build/Expan+スタッフ, image text, wrap fix, packaging.
- EVENT/*.bin cipher cracked: ~/tools/evcrypt.py (word-XOR, key=((prev_cipher*0x5B1A7851+0xCE4E)>>16), seed=first u32). Decrypted Umasona/Historical files have NO text (just IDs) - text is in WMM/exe.
- WCM: yen->$ and honorifics stripped (77 entries), rebuilt.
- Package: python3 ~/tools/mkpkg.py -> "Winning Post 10/WP10_English_Patch" (romfs_patch.wpp diff + INSTALL.bat/apply_patch.ps1 + exefs IPS + subtitles/*.ass + burn_videos.bat). RE-RUN mkpkg after any change. Verified wpp reproduces mod files.
- Eden screenshots folder empty; wrap fix needs a dialogue screenshot to measure line width.
- Wrap: ~/tools/wrap.py (DejaVu@100 LIMIT=3350, VAR=900) applied in wmmapply; calibrated from user screenshot (trainer Fukuichi line).
## 2026-11-22 late
- EVENT text IS cp932 (missed earlier). ev_strings.json (H=Historical 1424B recs from 216: name76/effect88/info980; U=Umasona 432B recs from 176: name32/short12/desc96/cond96). Translations ev_tr_H.json, ev_tr_U.json; build: python3 ~/tools/evbuild.py (re-encrypts to romfs/EVENT/).
- Name entry: code patch (code_ips.json) at 0x1bf44/0x1bf18 -> cave 0x108d000 lets half-width ASCII pass validator 0x1be70 (names + readings).
- unbmod.build rewritten to patch in memory (old version timed out -> earlier DATA.UNB builds were incomplete!). unbapply now <1s.
- Course record holder names (unb 0269/0627, 20B recs from 27: name hk 15B at +5) -> unb_patches_records.json via rec_en.json.
- Bank 5: messages >=722 are tipster/paddock comments (not TTS) -> b5dict.json; wmmapply skips bank5 k<722.
- wrap.py: per-bank LIMITS (31 secretary hint box =1650); ^0x codes ignored in width.
- exe: 大人->Calm, 超激->Fiery, 日->Sun, 土->Sat, 回->"".
- mkpkg includes EVENT files; ps1 creates subfolders.
- Image text: NOT done (textures in FPackages fdata, would need G1T/ASTC tooling).
## Image text (textures) - 2026-11-22
- KT RDB: ~/tools/kt.py (reads root.rdb entries straight from XCI; loc(): prm 01 04 [00000080] off u32 size u32 idx u24; payload(): IDRK hdr (es-ps bytes) + chunks [u16 csize][8 bytes][LZ4 block 16KB] via liblz4 ctypes).
- G1T: ~/tools/g1t.py (parse, Tegra deswizzle/swizzle, decode via Pillow DDS; 0x62/0x5b=DXT5, 0x66/0x5f=BC7, 0x60/0x59=DXT1). Encode DXT5 with Pillow (BC7 encode not available -> keep to DXT5 textures or convert fmt).
- texscan_*.json = header scan of all textures; texsearch.py = cv2 template search (templates in eden/_tmp/tpl).
- Year-select screen: rdb entry 9992 (14 textures 4096x2048, one per year). Tex 11 = 1968 -> yearedit.py -> texpatch.py builds romfs/FPackages/release/0xe7a10001.fdata (uncompressed IDRK) + patched root.rdb (entry prm -> idx 87, fl 0x20000) + root.rdx (+87 -> key, second u16 = 0xffff).
- All 13 year textures done (years.json translations, banners.json, /tmp/runyears.py & /tmp/packyears.py -> g9992_en.bin). TODO package: new fdata must be built from original fdata 0x8baaa1ce entry range + diff (wpp needs 'derived file' support).
## PC port (2026-11-23) - game at ~/mnt/Winning post 10 pc/Winning Post 10 2026 (backups in JP_original_backup/)
- Exes are SteamStub-protected: NEVER edit exe files (launcher edit -> "Application load error"). Launcher left JP.
- Loader: /home/claude/loader/loader.c (cloud container; clang+lld-link) -> dinput8.dll proxy; reads WP10_EN.bin (pcpatch.py: in-place strings, pointer relocs, WMM bank table at rva 0x3851600). Logs WP10_EN.log. Names step disabled by WP10_EN_kana_names.flag (didn't work; only hit a 62-rec cache).
- Build: wmmapply_pc.py (pc/WMM_jp.DAT, pc/pc_banks.json), unbapply_pc.py (PC UNH lacks Switch entry 256 -> index i>256 => i-1), pcpatch.py (+pc/extra_tr.json, shorten.py/pc/short_manual.json), then cp pc_out/* to game. DLL can't be replaced while game runs.
- !! unb2/NNNN.bin numbering does NOT match DATA.UNH index (wrong-entry patches crashed game). Use unb3/ (matches UNH).
- Horse names: built from word dictionary = UNH entry 5 (8MAG, 33894 recs x 0x44: kana code 0x1f + English code 0x25; variants have suffix byte 0xac-0xae). Switch used code patch for English mode; PC: dictpatch.py copies English into kana field (unb_patches_zdict.json, no trailing space - game adds spaces). WORKS.
- TODO PC: name entry (code check, try full-width), money display, year screens (High/Middle fdata), video subs (.webm), friend package for PC.
- PC year screens: ktpc.py (PC rdb reader), entry fk 0x2cb753f6 = 10 tex 1024x1024 DXT5 linear (9 years) -> yearedit_pc.py (pc/yN_en.png) -> texpatch_pc.py builds 0xe7a10001.fdata + root.rdb/rdx for High & Middle (same payload). Installed; originals in JP_original_backup/FPackages.
- PC videos: ~/tools/pcmov.sh burns MOVIE_EN/*.ass into webm (vp9 realtime, 10M) -> pc/mov; installed, originals in JP_original_backup/MOVIE.
- Money on Switch was done via format strings (no code patch) so should carry; name entry needed code patch (not done on PC).
## PC name entry (2026-11-23 04:20) - loader v18 installed, v19 (live bisect) built at eden/_tmp/launcher/dinput8_v19.dll NOT yet installed
- Game = ANSI window (PeekMessageA), needs JP locale: loader IAT-hooks IsDBCSLeadByte(Ex), GetKeyboardLayout, ImmGetOpenStatus/ConversionStatus/Context, ImmSetConversionStatus (auto katakana when game sets cmode&2) + WH_GETMESSAGE hook converts typed ASCII -> SJIS full-width (two WM_CHAR via widen()) ; ` toggles katakana romaji mode. WORKS (name + reading boxes).
- Name swap: type ZZZ (first) / YYY (surname) then Ctrl+Shift+N replaces in memory from WP10_EN_name.txt (first=/last=, 6 letters). Not yet tested by user.
- BUG: Owner Register surname boxes + age box missing when exe text is English; present with all-JP text; still missing with relocs removed and with rva 0x2aafce0-0x2aafdb8 reverted -> culprit is an in-place text record elsewhere. v19: Ctrl+Shift+8 start bisect, 0=ok 9=bad, result in WP10_EN_names.log. ~/tools/binsplit.py makes subset bins (full restored).
- ROOT CAUSE of missing surname/age boxes: exe_strings regex matched binary data as 1-char SJIS strings (float 278.0 = 00 00 8B 43 looks like '気'; ID tables in .data look like 右/雨/年/前/週) and pcpatch overwrote them. Fix: pc/exclude_rva.json + pcpatch skips 1-char strings at unaligned rva. (Switch build may have the same class of bug in ro_strings - check.)
- PC owner name (2026-11-23 12:03): loader v21 (diag) installed. Typed name is NOT stored as SJIS in memory; found as 1-byte name codes (hk.py codes: a-z = c+0x24, A-Z = c+0x2a) NUL-terminated in heap, e.g. 'bow' -> 86 93 9b 00. Next step for 6-letter names: on box close, find code key (3 bytes + 00) and write 6 code bytes if field has room (check bytes after). User said leave it for now - typing 3-letter names works. Surname/age boxes fixed.
- PC owner names SOLVED LAYOUT (12:16): committed names live in exe image .data as SJIS full-width, 17-byte fields in order: surname, first, reading-surname, reading-first (so 16 bytes usable each); farm name field 13 bytes then reading. On the form (before finishing registration) they are NOT in that struct. Loader v25: captures up to 8 typed letters per ABC box (game keeps first 3), then every 2s scans exe image for SJIS(first3)+NUL with empty rest-of-field and writes the full typed name as half-width ASCII. v24 fix: capture no longer swallows letters (it broke 6-letter farm box).
- WCM essays (Legends screen): literal "\n" markup is NOT understood there (prints as text); real 0x0a newline works. ~/tools/wcmwrap_pc.py wraps at DejaVu width 1700 replacing spaces with 0x0a (entries with literal \n markup skipped). Installed to PC.
- 2026-11-23 13:09 PC: loader v26 converts space ' . - to full-width (horse rename spaces). Horse rename to English blocked: JP horses require katakana name (English is built via dictionary entry 5). Idea (parked by user): capture typed English, send katakana placeholder, after OK overwrite name record with alpha codes. Also TODO: Salios 'Last' column shows ';' instead of a race name (12/3 race). WCM wrapped with 0x0a (wcmwrap_pc.py). Fixed: トレセン, ダ->D, keybind/options block (extra_tr.json).
## 2026-11-23 15:58 PC session end (state)
- INSTALLED: WMM.DAT (help-page reflow bank19 LIMITS 19:2950, reflow() in wmmapply_pc, HON honorific strip, space()), WP10_EN.bin (table matches installed WMM; batch3 errors/UI, DLC descriptions dlc_tr.json via dlctr.py w/ word wrap LIMW 2450, style arrows 逃先差追->Ld/Pr/St/Cl, pace terms, 着/位->".", ランク Rank, ChatGPT's "(Surname/First, 8 max)" kept via extra_tr), DLC banners (37) via banpatch_pc.py -> FPackages High/Middle 0xe7a10002.fdata + root.rdb/rdx (backups root.*.pre_banners).
- dinput8.dll in game folder may be ChatGPT's version: DO NOT replace.
- WMM.DAT and WP10_EN.bin MUST be installed together (bin carries WMM bank table). If only bin is rebuilt while old WMM installed: use pc/wmm_tbl_installed.json method.
- TODO: tactic flag icons (green 差 probably text via 0x39c73a0 table - needs user screenshot to confirm; red 前付 unknown); help-page pictures (low priority); remaining DLC banners not found (1968 sets etc., texfind_pc.py); Salios 'Last' ';'.
## 2026-11-24 03:10 session end
- INSTALLED: in-race subs (DATA.UNB entry 552 via pc/c552 + unbapply_pc), glossary rewrite (pc/gl/en_*.txt -> gl_build.py, titles.json), msg overrides pc/msg_over/*.txt ({cN}..{/c} colour, ' // ' newline), colour-marker spacing in reflow(), poster words fixes, item/reward desc wrapping (wrapnl in pcpatch), UI fixes.
- Glossary A-Z sort DISABLED (GLOSS_AZ=False in pcpatch): links in descriptions break when table reordered (lookup mechanism unknown - needs code analysis). glosspatch OVR full names applied via relocs.
- Not doable: colour words 金/銀/銅/虹/緑 (3-byte slots, no pointers); Road to Best Online logo + route names are images not found by texture search.
- Installer: ~/mnt/Winning post 10 pc/winning post english installer (zip built with ~/tools/pkg/zipadd.py in 4 batches 0-8,8-17,17-26,26-47). Finds game: next to patch, Steam, drive search, folder picker. manifest.json hashes must be updated when WMM/bin change.
- User releasing beta 2026-11-24 after testing installer.
## 2026-11-24 13:30 install
- INSTALLED WMM.DAT + WP10_EN.bin + DATA.UNB/UNH (backups *.bak_prev4 / DATA.*.bak_prev). Contains: seg_over b36*/b37* proofread (all 240 bank36/37 msgs), glue-line fixes (113 JP lines w/o \x01" prefix -> msg_fix per msg; pc/glue_lines.json), Koei Sports naming, records names unb3/0172 (unb_patches_records172.json), colour words Gld/Slv/Brz/Rbw/Grn global, ranker titles, Points, ranks, 親/子 Par/Sub, 危 !! (rva), ハンデ Hcp (rva), 」 at 0x2b69c5c -> " (verify), wrap LIMITS 8:2300 9:3650.
- msg_fix per-message misses now print 'MSGFIX miss' instead of assert.
- TODO: installer manifest+zip rebuild; ancestors katakana (table unknown among unb3 0005/0008/0153/0160/0263/0291/0400/0442/0523/0580); race short/tiny names (racebuild tiny) + ';'/'{'/'FD・' race-name lookups by old offsets; schedule region labels; bank 8/9 Koei Sports proofread (batch 2).
## 2026-11-24 audit (post-install, NOT installed yet)
- Audit1: tools/audit/wmmjp.py, wmmjp2.py -> 183 more untranslated glue strings fixed via msg_fix (/tmp/glue2_en.json mapping, pc/audit_glue2.json). Now 0 multi-char JP runs in WMM.
- Audit2: 390 exe UI strings added to extra_tr (pc/audit_exe_keep.json list; skipped NG-word list 0x2a5b0c4.., name-generator katakana parts, debug PU条件, credits).
- Audit3: race pools: race.pack now dedupes + asserts size <= original (theory: fixed buffer -> races past orig size showed ';' 'FD・' '{'); 504 readings trimmed to 10; tiny() rewritten (skip San/La/Prix.., combine words). Region chars 豪香ドサ欧米独仏新星 in 0x2a17000-0x2a22400 -> AUS/HK/UAE/KSA/EU/USA/GER/FRA/NZ/SGP via extra_rva (verify schedule headers).
- Audit4 finding: family line/records read raw kana from 9 big horse tables (unb3 0008,0153,0160,0263,0291,0400,0442,0523,0580; names at 12+36r) while dict (unb3/0005) has English. Patching raw names = risky (TTS/lookup) -> ask user before.
- 13:55 INSTALLED audit build + famline test (unb_patches_famline.json, 6894 names in 9 horse tables). Backups *.bak_prev5 / DATA.*.bak_prev2 (prev2 = before famline+race pool repack). Bank8 seg_over b08a-h, seg_jp_over.json, bank8/9 ' - X'->': X' rule.
- 14:4x INSTALLED WMM+bin (bak_prev6). Proofread tools: pc/seg_jp_over.json (JP segment -> EN, global, applied before SEGO), ~/tools/segfix.py (SEGO from dump w/ index edits), post-rules in wmmapply: line-start ' - x' -> 'X'; var+' - it/they VERB' -> var+' VERB'; var+' - VERB' -> ' VERB'; var+' - its' -> "'s"; var+' - I/let's/you...' -> ', '. Bank 8/9 leading ' - ' -> ': '. Remaining ' - ' after var: ~6180 (was 11046). audit: tools/audit/segfreq.py -> pc/audit_badsegs.json
- 2026-11-24 later: INSTALLED WMM+bin (bak_prev7). seg_over b29z (bank29 done), b26a, b38a, b07a, b14a, b28a, b13a (part). seg_jp_over: stat lines "'s X rose/dropped/trained", と^04~8~ -> ' and ^04~8~' (27:157 kept 'wants to'). Remaining ' - ' segs: 2256 unique / 3495 occ (was ~3200/4900). Next banks: 13 (rest), 6, 10, 11, 31, 21, 33, 30, 3, 16, 25, 12, 32, 47 (/tmp/remain_msgs.json; regenerate via audit/remain.py).
- 2026-11-24 evening: " - " join cleanup COMPLETE. INSTALLED WMM+bin (bak_prev8). Hand seg_over: b26b b06a b07b b10a b11a b12a b13a b16a(colon) b21a b25a(rx rules) b30a b31a b33a b03a; zz_auto.txt = generic rules + ': ' fallback for the long tail (~780 msgs, /tmp/gen.rules) + verb fixup. New tools: tools/sf.py (segfix w/ variant propagation), enmap.py (exact EN->EN per msg), colon.py, rxmap.py (regex rules, --dry), segc.py (compact view), audit/remmsgs.py (per-bank remaining -> /tmp/remain_msgs.json). wmmapply: post-rules DV1-4 now also after \x01C.... name codes; new DV5 fallback var+' - x' -> ' x' (verbs) or ', x'. Backup of script: wmmapply_pc.pre_dvc.py. Remaining raw ' - ' after var in DAT: 17 (mostly in-sentence, fine).
- 2026-11-24 late: hand-rewrote the ~740 auto ': ' (colon fallback) messages -> seg_over zz_hand*.txt (load after zz_auto), final pass zzz_final.txt converts any remaining var+': x' to ' - x' so DV post-rules give ', x' / ' verb'. segfix.py now merges with existing line in out file (previously a 2nd edit on same key in one session overwrote the 1st!). wmmapply space(): no space before ordinal suffix st/nd/rd/th after var. New tool pref.py. INSTALLED WMM+bin (bak_prev9).
- 2026-11-24 15:xx grammar audit: tools/audit/gram.py (/tmp/gram.json); fixes in seg_over/zzzz_gram.txt; INSTALLED (bak_prev13).
## 2026-11-24 polish pass (list items 1-5) - BUILT, NOT YET INSTALLED (needs game closed; next backup .bak_prev14)
- Consistency: _gfix in wmmapply (Kikka->Kikuka, favourite->favorite etc., X Stakes->X S., Sensei->-sensei, char names Family Given); same spelling fixes in extra_tr/data_tr/translations/ev_tr_U/dlc_tr and pc/c552 race subs (DATA.UNB rebuilt).
- Overflow: wrap.py now counts a line-leading name var and a trailing var (backup wrap.pre_lead.py); audit/overflow.py measures lines (20k -> ~800 over, rest are number-heavy lines). Side effect: ~1,800 more pages with 4+ lines - check in game.
- Horse names: dictpatch.py now also patches the 48 kanji pieces (Daiichi/Daini/...) + ヨリ->Yori (backup dictpatch.pre_kanji.py) - unpatched pieces likely showed blank.
- he/she: seg_over/zzzzz_hs.txt (+ tools/subfix.py) for clear broodmare/stallion/filly/colt lines.
- Satsuki->"Satsuki Sho", 宝塚記念 -> "Takarazuka Kinen" (reloc, short fallback in short_tr).
- NOT done: glossary A-Z (link codes \x02 1x yy not decoded reliably - needs exe analysis); 6-letter owner names (needs loader/dinput8 change - not allowed); 芝/ダート label + Toriumi Ai banner textures (need screenshot crops for template search).
- 2026-11-24 15:30 INSTALLED polish pass (WMM, bin, DATA.UNB/UNH); backups .bak_prev14
- 2026-11-24 15:35 INSTALLED glossary A-Z (GLOSS_AZ=True, glosspatch writes pc/gloss_map.json, wmmapply remaps \x02 [10-19][64-ff] link codes = tab+index; tab labels #-B..V-Z). Backups .bak_prev15
- 2026-11-24 15:45 INSTALLED WCM.DAT: Deep Impact essay (690) shortened via pc/wcm_over.json (wcmwrap_pc applies overrides). Backup WCM.DAT.bak_prev15
- 2026-11-24 16:07 INSTALLED DATA.UNB/UNH with horse dict reverted to pre_kanji (long names blank/truncated in dialogue after kanji piece patch?). Kanji version saved as tools/dictpatch.kanji_try.py. Backup .bak_prev15
## 2026-11-24 16:15 long horse names (user-named) cut to 9 chars ("Dragon Ph" = ドラゴン+フェニックス)
- Cause: game builds player-chosen names from dictionary kana fields (we put English there) and caps at 9 chars (JP kana limit). Not caused by today's files. Fix needs in-memory code patch (exe .text is SteamStub-encrypted on disk, entropy 8.0).
- Installed dinput8.dll (50688 B, md5 846314bf..) is ChatGPT's, NOT my v26 build (27136 B). Step 1: temp-swap in _work/dinput8_dump.dll (my v26 + dumps decrypted .text to WP10_text_dump.bin), run once, restore ChatGPT's dll.
- 16:45 FOUND: dialogue cut happens because the rename screen (even closed unchanged) turns the horse name into a "custom name" id >= 0x9470 stored in a 9-byte-per-entry table (ptr at 0x14402af08, 0x6590 entries). get = 0x14027eb50 (copies max 9), set = 0x140201b50(idx, sjis) (conv 0x1400a37f0 limit 0x17, keeps 9). Info screen uses word ids, so full there.
- FIX v1: /home/claude/wrap/wrap.c -> dinput8.dll (8 KB) = add-on that LoadLibrary's ChatGPT's loader renamed dinput8_gpt.dll (forwards DirectInput8Create) and hooks get/set: full code string (<=23) kept in side file WP10_EN_longnames.bin, used when its first 9 bytes match the game's entry. Log WP10_EN_long.log. ChatGPT original also kept as dinput8.dll.chatgpt_bak.
- 16:49 CONFIRMED by user: long horse names fixed in dialogue with add-on (dinput8.dll = wrap v1, dinput8_gpt.dll = ChatGPT's). Installer rebuild must ship BOTH dlls + longnames logic. Leftovers in game dir: WP10_text_dump.bin (44MB), WP10_scan.log, WP10_hook.log (diag only). Horse dict kanji pieces still reverted (tools/dictpatch.kanji_try.py) - can re-enable, wasn't the cause.
- 17:20 long-name add-on builds in /home/claude/wrap: wrap.c v1 (working, _work/dinput8_long_v1_working.dll), wrap2 v2 (half-width allow patch 0x1400247a7 EB E8, validator 0x140085780 hook accepts ASCII names, logs), v3 (own set: game set 0x140201b50 has 16-byte stack buffer -> crash >15 letters), v4 (auto full-width off via faking F7 in ChatGPT dll IAT GetAsyncKeyState during horse-name input ret 0x82536 max 0x13; input called with bigger box), v5 (24 letters: FL 32 file WP10_EN_longnames2.bin; replaces compose 0x1400a5370 and single-word 0x1400a5300 so 24-byte game buffers can't overflow; input max 0x31).
- 17:30 README.txt (installer folder) got a HORSE NAMES section (18 chars, 12 visible boxes, longnames file). Backup ~/work/README_installer.bak.txt. Installer rebuild must also ship dinput8.dll(add-on v4b/4)+dinput8_gpt.dll.
- 17:42 INSTALLED dinput8_long4b.dll (add-on, horse name input max 0x13 = 18 half-width) + DATA.UNB/UNH with 48 kanji dict pieces re-enabled (backup .bak_prev16). User tested owner/reading/farm names OK with add-on.
- 17:58 INSTALLER REBUILT: data/files updated (WMM, bin, UNH, WCM, dinput8.dll=add-on v4b, dinput8_gpt.dll=ChatGPT), DATA.UNB deltas via tools/pkg/mkdelta_np.py (numpy, verified fwd+undo), manifest (15 entries, all verified), install/uninstall.ps1 handle dinput8_gpt.dll, README CRLF. Zip built with tools/pkg/zipadd2.py (skips *.zip) in batches 0-3,3-4,4-6,6-12,12-20,20-26,26-48 (~5MB/s). Old zip + old data in _work/.
- 18:10 Release copy: Desktop\WP10 English Patch Release (zip + README). User confirmed installer works on fresh copy.
- 19:35 REVERTED wrap.py to pre_lead (today's var-width wrap made lines break too early, esp. bank 31 tutorial). Broken version kept as tools/wrap.lead_broken.py. Rebuilt WMM+bin, INSTALLED (backup .bak_prev17). Released v0.1 zip has the bad wrap.

## 1.0.4.0 port (2026-11-24 night) - build with WPVER=104
- Steam copy at ~/mnt/Winning Post 10 2026 (C:\Program Files (x86)\Steam\steamapps\common\...). Originals backed up: Downloads\Winning post 10 pc\WP10_1.0.4_original. ~/work/v104/ has WMM_jp.DAT, exe, pc_banks.json (tools/wmmbanks.py derives banks by walking WMM).
- DATA.UNB/UNH + EVENT identical to 1.0.1.1 -> reuse. MOVIE same sizes.
- WMM: 421 msgs differ (mostly shift), 41 changed + 7 new (bank19 +5, bank49 +1). v104/align.json idxmap old->new; wmmapply_pc RM() remaps index-keyed overrides. New/changed lines: v104/seg_over/a_changed.txt (keyed by 1.0.4 index), glossary 350/354 in v104/gl_en.txt. Bank table rva 0x3868620 (file 0x3866c20). Output pc_out104/WMM.DAT.
- WCM: 23 essays had tiny JP fact edits; v104/wcm_over.json. pc_out104/WCM.DAT.
- Textures: 42 new rdb entries (indexes shifted). ktpc G->Steam folder when WPVER; banpatch remaps dlc_tex_cands by fk. Year + banner payloads identical. pc_out104/FPackages (year) + FPban (banners, final rdb/rdx).
- Exe data: tools/v104map.py (anchored mapping), v104strings.py (rva_map.json), v104strings2.py (exe_strings for 1.0.4: long strings all zero-bounded occurrences; short ones verified). New strings: v104/exe_new_strings.json -> v104/extra_tr.json. Glossary TAB_O 0x3abb120 REC_O 0x3abb180. pcpatch WPVER=104 -> pc_out104/WP10_EN.bin.
- BLOCKER: dinput8_gpt.dll (ChatGPT, no source) and our add-on use hardcoded 1.0.1.1 RVAs (0x85780, 0x82526, IAT slots 0x2a030xx, 0x3851600 ...). Need decrypted 1.0.4 .text: _work/dinput8_dump104.dll (dump-only proxy, writes WP10_dump104.bin = full image) -> run game once.
- 1.0.4 exe code: decrypted dump v104/dump104.bin -> v104/wp10_104_dec.exe (file layout). tools/v104code.py (cmap/cmap2 code mapping). ChatGPT dll ported by tools/gptport.py -> v104/dinput8_gpt_104.dll (162 RVAs + 47 check immediates; protect size 0x2000 for 2 split pages; tab-label table 0x3ac1d20). Add-on: /home/claude/wrap/wrap4c_104.c (get 0x28a350 set 0x2038c0 conv 0xa3af0 ctab 0x4042678 dlgset 0x28030 validator 0x858a0 check2 0xa6410 input 0x27880 ret 0x82656 halfwidth 0x248b7).
- WCM: 1.0.4 exe holds a hardcoded part-offset table -> WCM English laid out on 1.0.4 JP part sizes (wcmwrap_pc WPVER).
- Installed into Steam folder 2026-11-25 ~00:10 for first test.

## 1.0.4 garbled Nanaka message (fixed 2026-11-25)
- Cause: 1.0.4 code hard-codes WMM bank 1 file offset 0x4c00 (JP layout) in 5 places: rva 0x32ad7, 0x34288, 0x342cc (0x4c04), 0x342f4, 0x34457. English bank 1 is at 0x4cc0 -> message read 0xC0 bytes early -> garbage.
- Fix: add-on v4d (wrap4d_104.c -> dinput8_long4d_104.dll) patches the 5 immediates in memory to the bank-1 offset from the table at 0x3868628 (waits for decrypt + WP10_EN.bin table write). Exe on disk untouched.
- Installed set: dinput8.dll=v4d, WP10_EN.bin=capped (cbcc86..), WP10_EN_code.bin rebuilt from v104/coderel.json with rva=ir+3 (03f6be..).
- Also found: 35:108 has ASCII %s where JP has full-width ％s (literal) -> should be \x81\x93s. Not fixed yet.
- 35:108 fixed (\x81\x93s via v104/seg_over/b_fixes.txt), installed 2026-11-25

## TODO (after 1.0.4 release; apply to both 1.0.4 and 1.0.1.1)
- [ ] Display-time people-name translation (add-on hook): hook the game's person-name fetch, swap JP -> EN from a lookup list.
      List = known people (people_en.json / pplbuild data) + name-pool pieces (8INI 0076 surnames, 0344 given names) romanised -> builds "Given Surname" for generated people.
      Fallback: kana names (player-typed, e.g. ナオエやまと) -> romaji letter by letter. Unknown kanji stays JP.
      Fixes: old saves started before the patch, people generated in later years, player-typed kana owner/horse names. Save file untouched.
      Work: find name-fetch function(s) in 1.0.4 code, check all screens (horse info, results, dialogue, lists), short-name fallback for narrow fields.
- [ ] Community feedback 2026-11-25: Blood tab -> Pedigree; untranslated traits (瞬/持/消 badges are textures; ask for screenshots of others);
      breeding notice reword ("Any mares not in foal by June should be covered again."); money: 億 shown as "M" is wrong -> yen with proper units;
      running-style badges (textures) -> Great Runaway/Front/Pace/Late/End + in-race style labels; advisor speech bubble wrap too wide.
- [ ] Port today's fixes to 1.0.1.1 (35:108 ％s; check whether 1.0.1.1 needs the WMM bank-1 offset fix).
- [ ] Update open-source folder with add-on v4d source (wrap4d_104.c).
- [ ] Auto-fill katakana reading (Read field) from English horse names at naming time (add-on input hook), so race commentary can say them
      (user found: Name "AK Spider" + Read "エーケースパイダー" -> commentary works). English->katakana via dictionary of common horse-name words + sound rules;
      player can still edit Read. Only affects names entered after the feature. (Same idea as Reddit katakana suggestion.)
### Community feedback fix plans (2026-11-25) - order: 1,4,8 -> 6 -> 2,7 -> 3/5
- [ ] 1 Blood->Pedigree (small): exe tab string 血統 in menu-text list -> "Pedigree"; longer than slot -> reloc/code.bin; if texture -> texture edit. Check all screens with the tab.
- [ ] 4 Breeding notice (small): WMM seg override "Any mares not in foal by June should be covered again." -> rebuild WMM + install with bin.
- [ ] 8 Advisor bubble (small-med): find bank(s) using small bubble, narrower wrap limit per bank in wmmapply; shorten long ones.
- [ ] 6 Money (medium): exe money templates with 億/万 -> 億 wrongly "M" (x100 off). Rewrite to yen; USER TO DECIDE format (¥34.8B vs full number). Check top bar, horse info, prize, shop.
- [ ] 2 Traits (small-med): 瞬/持/消 badges = textures (confirm meanings, short EN e.g. Burst/Stamina/Fade); other traits: need screenshots -> text (menu list) or texture.
- [ ] 7 Running styles (medium): badges 大逃逃先差追 = textures -> Great Runaway/Front/Pace/Late/End (shorter if needed); find in-race style labels (text or texture).
- [ ] 3/5 People + player-typed names (large): display-time lookup (see above).
