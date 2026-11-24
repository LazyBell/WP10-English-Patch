# Winning Post 10 2026 (Steam PC) – Full English Patch (Beta)

A complete, unofficial fan translation of **Winning Post 10 2026** for Steam PC – Koei Tecmo's horse racing / breeding / ownership simulation that was only ever released in Japanese.

This isn't a quick machine pass over the menus. Every part of the game that shows text has been extracted, translated, rewritten by hand where it mattered, re-wrapped to fit its boxes, and put back into the game – including the parts that are hidden inside the protected game executable, the encrypted event files, the compressed texture packages and the cutscene videos. On top of the translation, the patch adds things the Japanese game never had: proper English horse names up to 18 characters, an alphabetical glossary, and English subtitles for the race commentary and cutscenes.

> **You need your own copy of Winning Post 10 2026 (Steam PC).** DLC is not required.
> Unofficial, non-commercial fan project. Not affiliated with or endorsed by Koei Tecmo.

---

## Contents

1. [Quick start](#quick-start)
2. [What's translated](#whats-translated)
3. [English horse names (up to 18 characters)](#english-horse-names-up-to-18-characters)
4. [How the patch works](#how-the-patch-works)
5. [The translation work in detail](#the-translation-work-in-detail)
6. [Problems we hit and how they were solved](#problems-we-hit-and-how-they-were-solved)
7. [Quality passes](#quality-passes)
8. [The installer](#the-installer)
9. [Known limits](#known-limits)
10. [Reporting problems](#reporting-problems)
11. [Credits and disclaimer](#credits-and-disclaimer)

---

## Quick start

1. Download `WP10_English_Patch_beta.zip` from the **Releases** page.
2. Right-click the zip > **Extract All...** (don't run anything from inside the zip).
3. Close the game, open the extracted folder and double-click **INSTALL.bat**.
4. When it says **"English patch installed!"**, start the game from Steam as normal.

- **Uninstall:** close the game and double-click **UNINSTALL.bat** – the game goes back to Japanese.
- **After a Steam update or "Verify integrity":** the Japanese files come back. Just run INSTALL.bat again.
- **Fullscreen:** double-click `Fullscreen_ON.reg` (or `Fullscreen_OFF.reg` for windowed).

The full FAQ (Windows SmartScreen warning, game folder not found, version mismatch messages) is in `README.txt` inside the zip.

---

## What's translated

| Area | What you get |
|---|---|
| **Menus and interface** | Every menu, button, tab, tooltip, confirmation box, error message, stat label and system message – around 17,000 strings inside the game executable |
| **Dialogue** | All story, staff, trainer, jockey, rival, secretary and event dialogue – about 27,000 messages across 54 message banks |
| **Help pages and tutorials** | Every help screen, re-flowed so the English fits the help boxes |
| **Racing Glossary** | Over 400 racing terms with full English descriptions, **sorted A–Z** with English tabs (#-B, C-D, E-F, G-H, I-L, M-O, P-R, S, T-U, V-Z), and every clickable link inside the descriptions still working |
| **Race commentary** | Shown as English subtitles during races (the voice stays Japanese) |
| **Cutscenes** | Opening and story movies re-encoded with English subtitles burned in |
| **Legends** | Horse names, profiles, records and the long history essays for the game's legendary horses |
| **Horse names** | The game's horse-name word dictionary (33,894 words) in English, so generated and real horses show English names |
| **People** | Owners, trainers, jockeys, breeders and stud farms romanised/translated |
| **Races and courses** | Over 2,700 race names in long, short and tiny (table) forms; course names and notes; course record holders |
| **Bloodlines** | Sire lines, female families and their descriptions |
| **Events** | Historical Training and Umasona names, effects and descriptions (stored in encrypted event files) |
| **DLC** | DLC item, set and reward descriptions; 37 DLC banners |
| **Image text** | Year-select screens and DLC banners redrawn in English |
| **Money** | Shown in dollars instead of yen throughout |

---

## English horse names (up to 18 characters)

The Japanese game only lets you name horses in katakana, up to 9 characters. This patch lets you name and rename horses in English:

- **Up to 18 characters, including spaces** – the same limit used for real racehorse names in Australia, the UK, New Zealand, the US and worldwide. (Japan's 9 katakana take exactly the same space in the game's data as 18 English letters.)
- Letters, numbers, spaces, apostrophes ('), full stops (.) and hyphens (-) are allowed.
- **The name box shows 12 boxes.** The game's name screen is built from exactly 12 boxes, so that's all it can display – but this is only the display. Keep typing past the 12th box and the full name is saved. Typing stops automatically at 18.
- Long names show in full in dialogue, on the horse's own screens and elsewhere. On a few very crowded lists a long name may be shortened.
- Long names are kept in `WP10_EN_longnames.bin` in the game folder. Don't delete it, or long names go back to being cut at 9 letters in dialogue.

Making this work needed several separate fixes – see [Problems we hit](#problems-we-hit-and-how-they-were-solved).

---

## How the patch works

The game keeps its text in many different places, each with its own format. Each one needed its own tools.

### The game executable (menus and interface)
- `WP10_2026.exe` is protected by Steam (SteamStub DRM): its code is encrypted on disk and only decrypted when the game starts. **Editing the exe on disk breaks the game**, so the patch never touches it.
- Instead, a small loader DLL (`dinput8.dll` – Windows loads it automatically when the game starts) waits for the game to unpack itself, then writes the English text straight into memory.
- About 17,000 Japanese strings were found in the exe's data sections. English that fits in the original space is written in place. Longer English (about 1,300 strings) is placed in new memory and the game's pointers to that text are redirected to it. About 840 strings that have no pointer and no room were given carefully shortened English.
- All of this lives in `WP10_EN.bin`, a compact list of "write this here" records the loader reads at start-up.

### Dialogue (`WMM.DAT`)
- The message file holds about 29,000 messages in 54 banks. Messages are made of text segments mixed with control codes – variables (horse names, owner names, numbers, race names), colour and highlight codes, page breaks, portrait/voice cues and glossary links.
- Our tools split each message into segments, translate them, and rebuild the message with every control code kept intact and correctly spaced.
- English is word-wrapped using real font measurements, with a different line width for each kind of text box (dialogue, secretary hints, news, help pages and so on).
- Because the rebuilt file is a different size, the table the game uses to find each bank of messages also moves – that table is shipped in `WP10_EN.bin`, which is why `WMM.DAT` and `WP10_EN.bin` are always installed together.

### Game data (`DATA.UNB` / `DATA.UNH`)
- `DATA.UNB` is a 260 MB archive of about 670 data tables (people, horses, races, courses, bloodlines, commentary, the horse-name dictionary and more). `DATA.UNH` is its index.
- English is patched into the tables in place. Tables where English names are longer than the Japanese (race names, the in-race subtitles) are rebuilt and moved to the end of the archive, and the index is updated to point at them.
- Horse names in this game are built from a word dictionary: each horse's name is two word IDs, and each dictionary entry holds a katakana word and an English word. The patch makes the game use the English words.
- The installer ships only the **differences** for `DATA.UNB` (a 7 MB delta) instead of the whole 260 MB file, and can undo them exactly on uninstall.

### Legends essays (`WCM.DAT`)
- The Legends screen essays were translated and wrapped with real line breaks (that screen ignores the game's usual line-break markup).

### Encrypted event files (`EVENT/*.bin`)
- Historical Training and Umasona data is encrypted. The cipher (a rolling word-XOR keyed from the previous encrypted word) was worked out, the files decrypted, translated and re-encrypted so the game reads them normally.

### Textures (year screens and DLC banners)
- Image text lives in Koei Tecmo's texture packages (`root.rdb` / `root.rdx` index + `.fdata` data files, holding G1T textures).
- We wrote tools to read the packages, decode the textures, find specific images by template matching, redraw them in English, re-encode them and add them back as new package entries – for both the High and Middle quality packages.

### Cutscenes (`MOVIE`)
- Subtitles were written as timed subtitle files and burned into re-encoded WebM videos.

### The name add-on (`dinput8.dll` + `dinput8_gpt.dll`)
- The main loader (which applies the English text, handles English typing in name boxes and the owner name/reading) is `dinput8_gpt.dll`.
- `dinput8.dll` is a small add-on that loads the main loader and adds the English horse-name features. It hooks a handful of game functions in memory and checks the game's code is exactly the expected version first – if not, it switches its features off rather than risk a crash.

---

## The translation work in detail

- **Dialogue:** about 80,000 unique Japanese text segments to start with. Translated, then proofread bank by bank. Around 1,600 messages that had originally been assembled from separate fragments (and read like it) were rewritten by hand as whole sentences.
- **Honorifics and money:** Japanese honorifics (-san, -chan, -kun, -sama) dropped in dialogue except trainers' "-sensei"; yen amounts converted to dollars throughout dialogue and menus.
- **Names:** character names use Family Given order to match the name plates; horse, race and course names follow their real English spellings where they exist (e.g. Kikuka Sho, Satsuki Sho, Takarazuka Kinen, Tenno Sho (Spring)).
- **Glossary:** all 400+ terms and their descriptions rewritten as natural English explanations, with the game's in-text links preserved.
- **Commentary:** the in-race commentary script turned into English subtitle lines that fit the subtitle box.
- **Short labels:** hundreds of tiny UI labels (stat names, running styles, ground conditions, pace, ranks, table headers) given short English forms that fit 3–7 character spaces, e.g. running styles Ld/Pr/St/Cl, gelding "G", birth year "b. 2002".

---

## Problems we hit and how they were solved

**The game breaks if the exe is edited**
The exe is protected by Steam's DRM. Solution: never edit it; apply everything in memory with a loader DLL after the game has decrypted itself.

**Owner registration boxes disappearing**
After translating the menus, the surname and age boxes on the owner registration screen vanished. Bisecting the 17,000 text changes live in the game showed the cause: the string scanner had mistaken some binary data (numbers and ID tables) for one-character Japanese words and "translated" them. Those addresses are now excluded.

**Typing English in a Japanese-only game**
The game expects a Japanese keyboard and Japanese input. The loader adjusts the game's keyboard and input-mode checks and converts your typing so English names and readings can be entered.

**Text spilling out of boxes**
English is longer than Japanese. A custom word-wrapper measures every line with real font widths. A later audit measured every line in the game against its box; the wrapper wasn't counting the width of names placed at the start or end of a line, so names could push text past the edge. Fixing that cut over-long lines from about 20,000 to a few hundred, nearly all of them lines made mostly of numbers where the measurement overestimates.

**Fragments glued together**
Many Japanese messages are built by joining fragments around variables, which in English came out as "X – Y" chains. These were rewritten by hand into proper sentences, with grammar rules for the remaining joins (e.g. "X's fatigue dropped…").

**Glossary A–Z broke its links**
Sorting the glossary alphabetically used to send the clickable links in descriptions to the wrong terms. Analysing the link codes showed each one means "tab number + position in that tab". The patch now re-sorts the glossary and re-points every link – about 3,200 of them across the glossary and the game's dialogue – to each term's new place. All 391 terms were verified.

**Legends essays cut off**
One essay was too long for the Legends screen and lost its final lines. It was rewritten to fit; every other essay was checked.

**Long horse names cut to 9 letters in dialogue**
Horses showed their full names on their info screens but "Dragon Ph…" in dialogue. Tracing the game's code showed why: opening the rename screen (even without changing anything) turns the name into a "custom name", and the game stores custom names in a table with only 9 characters each. The add-on keeps the full name alongside the game's copy and shows it whenever the first 9 characters match, so it can never show the wrong name.

**Raising the name limit to 18**
Three separate things stopped longer English names:
1. The game rejected normal (half-width) English letters while typing ("Half-width text not allowed").
2. A second check rejected them again when confirming.
3. The keyboard helper typed wide letters, which take double space, so only 9 fitted.

The add-on lets English letters through both checks, switches the keyboard to normal letters automatically when the horse name box opens (and back afterwards, so owner names etc. work as before), and stops typing at exactly 18.

**Crash on names longer than 15 letters**
While testing, a 16-letter name crashed the game. The game copies a new name through a temporary 16-byte buffer, so anything longer overflowed it and the game's own safety check shut it down. The add-on now performs that step itself with room for the full name.

**Name pieces showing blank**
48 horse-name dictionary words were stored with kanji (e.g. 第一 "Daiichi", 第三 "Daisan") and had been left untranslated, which could show as blanks in names. They're now English.

**Installing safely**
The installer checks every file's fingerprint before touching it, refuses to patch unknown versions, backs up originals, and patches `DATA.UNB` with a verified delta that can be reversed exactly.

---

## Quality passes

After the first full translation, the whole game went through dedicated passes:

- **Consistency:** one spelling for every race name (Kikuka Sho, not Kikka), American spelling throughout (favorite, honor, color), "Stakes" shortened consistently to "S.", trainers always "-sensei", character names always Family Given.
- **Grammar audit:** automated checks for common problems ("it's" vs "its", a/an, doubled words, plural agreement) across every message, then hand fixes.
- **Line-width audit:** every line measured against its box, wrapper fixed (see above).
- **Pronouns:** horses called "he" or "she" wherever the text makes it clear – stallions, broodmares, fillies, colts and named historical horses – instead of "it" (lines about a horse whose sex isn't known stay neutral, because the game reuses them for both).
- **Race names:** shortened race names in tight spaces checked and expanded where the space allows (e.g. "Satsuki" → "Satsuki Sho").
- **Glossary:** links verified after the A–Z re-sort.
- **Fresh-install test:** the final installer tested on a clean copy of the game.

---

## The installer

- Finds the game automatically – next to the patch, in Steam's library folders, or by searching drives – and asks you to pick the folder if it can't.
- Checks the game is closed and that your files are the supported version (by SHA-256 fingerprint) before changing anything.
- Backs up every original file to `WP10_EN_backup` inside the game folder.
- Patches `DATA.UNB` with a delta (and checks the result), copies the other files, and installs the textures for both High and Middle quality.
- Optional parts (textures, Legends, events) are skipped with a warning instead of failing if your copy differs.
- `UNINSTALL.bat` reverses everything exactly and removes the added files.

**Files installed:** `WMM.DAT`, `WCM.DAT`, `DATA.UNB` / `DATA.UNH`, `EVENT/HistoricalTrainingInfo.bin`, `EVENT/UmasonaInfo.bin`, texture packages (High and Middle), subtitled movies, `WP10_EN.bin`, `dinput8.dll`, `dinput8_gpt.dll`.

---

## Known limits

- **Voice commentary is Japanese** (English subtitles are shown).
- **A few images still contain Japanese:** some help-page pictures, the turf/dirt course labels, one DLC outfit banner, the online mode logo and a few icons.
- **New randomly generated people** may keep Japanese names (their name fields are too small for romanised names).
- **The horse name box shows 12 boxes** – type past them for up to 18 characters.
- **Long horse names** may be shortened on a few crowded lists.
- **Owner names** are limited by the game's own name boxes.
- This is a **beta**: some text may still be Japanese, cut off or awkward.

---

## Reporting problems

Please open an **Issue** on this page with:
- a screenshot,
- where in the game you were (screen / menu / event),
- what you expected to see.

---

## Credits and disclaimer

Translation, tools and patching by the WP10 English Patch team, with AI assistance.

Winning Post 10 2026 © Koei Tecmo. This is an unofficial, non-commercial fan translation made so English-speaking players can enjoy the game. You need your own legal copy of the game; no game is included. Please support the official release.
