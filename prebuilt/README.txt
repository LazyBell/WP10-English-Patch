dinput8_gpt.dll - the main text loader.

The game loads dinput8.dll (the horse-name add-on, source in ../addon). The add-on
then loads this file, which:
- reads WP10_EN.bin and writes the English menu/interface text into the game's memory,
- lets you type English into the game's name boxes (owner name, reading, etc.),
- handles the keyboard input modes.

It is included as a ready-made file because its source code is not available.
It writes a log file (WP10_EN.log) in the game folder.

dinput8_gpt_104.dll - the same loader adapted for game version 1.0.4 (installed as
dinput8_gpt.dll). It was made from dinput8_gpt.dll by tools/gptport.py, which rewrites
the game addresses and code checks inside it for the 1.0.4 exe.
