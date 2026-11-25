# Building the patch

These are the tools used to build the patch: v0.2 for **game version 1.0.1.1** and v0.3 for **game version 1.0.4**.
They're research-grade scripts written while reverse-engineering the game, not a polished
build system - expect to read the code. No game files are included; you need your own copy.

## Folder layout the scripts expect

The scripts use fixed paths:

- `~/tools/` - the contents of `tools/` in this repo
- `~/work/` - the contents of `translations/` in this repo, plus original game files you copy in:
  - `~/work/pc/WMM_jp.DAT` - the game's original `WMM.DAT`
  - `~/work/pc/DATA.UNB`, `~/work/pc/DATA.UNH` - the game's original files
  - the original `WP10_2026.exe` is needed by `pcpatch.py` (see the paths at the top of that script)
- Output goes to `~/work/pc_out/`

Python 3 with `numpy` and `Pillow` is needed for some tools.

## Main build steps

| Step | Command | Output |
|---|---|---|
| Dialogue | `python3 ~/tools/wmmapply_pc.py` | `pc_out/WMM.DAT` (+ message-bank table) |
| Interface text | `python3 ~/tools/pcpatch.py` | `pc_out/WP10_EN.bin` (read by the loader) |
| Game data | `python3 ~/tools/unbapply_pc.py` | `DATA.UNB` / `DATA.UNH` (applies `unb_patches_*.json`) |
| Legends | `python3 ~/tools/wcmwrap_pc.py` | `WCM.DAT` |
| Events | `python3 ~/tools/evbuild.py` | `EVENT/*.bin` (decrypt, patch, re-encrypt) |
| Textures | `ktpc.py`, `texpatch_pc.py`, `banpatch_pc.py` | `FPackages/*/release/` |
| Installer | `tools/pkg/mkdelta_np.py`, `tools/pkg/zipadd2.py` | DATA.UNB delta + release zip |

`WMM.DAT` and `WP10_EN.bin` must always be built and installed together: the
message-bank table that matches `WMM.DAT` is stored in `WP10_EN.bin`.

## How dialogue translations are layered

- `translations/segdict.json` etc. - base segment translations
- `translations/pc/seg_over/*.txt` - hand overrides, applied in sorted file order (later files win).
  Format: `bank:msg|segment ¦ segment ¦ ...`
- `tools/wrap.py` - word-wrapping (font-measured line widths per text-box type)

## The add-on (`addon/`)

`dinput8.dll` hooks a few functions of the 1.0.1.1 exe in memory (the exe is SteamStub-protected,
so nothing is patched on disk). It checks the game code matches before hooking and turns itself
off if not. **All addresses are specific to 1.0.1.1** - supporting another game version means finding
the same functions again in that version.

Build: `cd addon && sh build.sh` (needs clang, lld-link, llvm-dlltool). It builds both `dinput8.dll` (1.0.1.1) and `dinput8_v104.dll` (1.0.4).

## Building for game version 1.0.4

Set `WPVER=104` and the same scripts build the 1.0.4 version (output goes to `~/work/pc_out104/`):

```
WPVER=104 python3 ~/tools/wmmapply_pc.py   # WMM.DAT (dialogue)
WPVER=104 python3 ~/tools/pcpatch.py       # WP10_EN.bin (menu text) + translations/v104/coderel.json
WPVER=104 python3 ~/tools/wcmwrap_pc.py    # WCM.DAT (Legends)
WPVER=104 python3 ~/tools/ktpc.py / texpatch_pc.py / banpatch_pc.py   # textures
python3 ~/tools/gptport.py                 # dinput8_gpt.dll adapted for 1.0.4
```

You also need, in `~/work/v104/`: the original 1.0.4 `WMM.DAT` (as `WMM_jp.DAT`) and `WP10_2026.exe`,
plus a decrypted copy of the 1.0.4 code (`dump104.bin`, `wp10_104_dec.exe`), made with
`addon/dump_dll_v104.c` (a proxy dll that waits for the game to decrypt itself, then saves its code).
`DATA.UNB`, `DATA.UNH` and the `EVENT` files are the same in 1.0.1.1 and 1.0.4, so they're reused.

`WP10_EN_code.bin` is made from `translations/v104/coderel.json`: header `WPCR`, entry count (u32),
then for each entry the address of the instruction's displacement (`ir + 3`, u32), the text length (u16)
and the text. The add-on puts these strings in memory near the exe and repoints the instructions.

What changed in 1.0.4 and how it was handled:

- **New exe layout:** text, glossary and bank-table addresses all moved. `v104strings*.py` / `v104map.py`
  map every 1.0.1.1 string address to 1.0.4 (`translations/v104/rva_map.json`, `exe_strings.json`).
- **Dialogue:** 41 messages changed and 7 were added (`translations/v104/align.json` maps old to new indexes;
  new translations are in `translations/v104/seg_over/`).
- **WCM.DAT:** the 1.0.4 exe has the Legends part offsets hard-coded, so English is laid out on the
  1.0.4 Japanese part sizes.
- **Empty strings in padding:** 1.0.4 code points at empty strings stored in the padding between texts,
  so `pcpatch.py` never writes over any byte the code refers to, and strings that no longer fit are moved via `WP10_EN_code.bin`.
- **WMM bank 1 hard-coded offset:** 1.0.4 reads dialogue bank 1 at file offset `0x4c00` (the Japanese
  layout) in 5 places (`0x32ad7`, `0x34288`, `0x342cc`, `0x342f4`, `0x34457`). The English bank 1 starts
  later, so the add-on patches those 5 numbers in memory to the real offset from the bank table.
- **Add-on and ChatGPT loader:** all addresses were found again in 1.0.4 (`v104code.py` byte-pattern
  matching); `gptport.py` rewrites the loader's addresses and checks.

## Supporting a future game version

1. Make a decrypted code dump with `addon/dump_dll_v104.c`.
2. Map strings and code addresses from the last supported version (see the 1.0.4 tools above).
3. Rebuild everything from the new originals, and check for new hard-coded offsets like the bank-1 one.
4. Add a `manifest_<version>.json` and a `data/v<version>/` file folder, and add the version to `Select-GameVersion` in `installer/scripts/common.ps1`.

Contributions welcome - open an Issue or Pull Request.

## What's in `translations/`

This is the complete working folder from the project: every translation file, hand override,
subtitle script (`.ass`), English texture image, audit list, to-do list, extracted text dump and the
project notes (`NOTES_workflow.md`, the running log of how each problem was found and solved -
start there).

Not included (they're the game's own files, and most are too big for GitHub's 100 MB file limit):
the game's data files (`.DAT`, `.UNB`, `.UNH`, `.bin` extracts, texture packages), the exe, and the
cutscene videos. Copy those from your own game. The finished subtitled videos are in the release zip.
