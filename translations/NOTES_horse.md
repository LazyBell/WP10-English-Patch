# Horse name research (2026-11-21)
- DATA.UNB entries: unb_idx.pkl (ent: [mem/off?, unc, comp, ?]); e[0]=file offset. Decompressed/raw copies in ~/work/unb2/NNNN.bin
  (zlib 78da ones decompressed; 8MAG 'packed' ones (comp<unc) are raw but names inside are plain bytes -> same-length edits possible)
- Horse name code (1 byte/char), decoder exe func 0xa9f90 (146 callers + ~7 inlined copies using #0x833f):
  01-3F: SJIS 0x833F+c (katakana = U+30A0+c); 40-56: 0x8340+c; 57-60: fullwidth 0-9; 61-6A: ASCII 0-9; 6B-84: A-Z; 85-9E: a-z;
  9F space; A0 '; A1 .; FD -; FE ー ; others table/0x86b2/0x8694 ranges. ~/tools/hk.py enc_kana/enc_en/dec
- Foreign horses already stored with English (alpha codes) in data. Japanese horses katakana.
- Tables seen: unb2/0512 & 0047 (36-byte recs: 12 hdr + 24 name field, max 18 used); 0268 (20-byte recs: id,0,0,year u16,name 15);
  0442 (name 16 then ff ff 01 00); 0580 (kana field + separate English field e.g. Equinox); 0075/0561 race-history winners (18-byte field)
- People tables (0156,0423 etc): SJIS name fields + kana-code reading fields (used for TTS?). Person names SJIS surname 17B / given 17B (unb2/0032).
- netkeiba CSV (unb2/0140, 0202, 0526, 0664): id,name,url  -> foreign horses English names list.
- Risk: commentary TTS likely reads kana codes -> English names may garble commentary.
