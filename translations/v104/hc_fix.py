# Horse comment fixes (bank 2, v104 indices). REP: exact segment replacements per message.
# SUB: substring replacements for every segment of a bank. PRE: byte regexes on the built message before wrap.
_KICK={
 "A razor-sharp kick":"It has a razor-sharp",
 "A sharp kick":"It has a sharp",
 ", plus the grit to never let a rival by once alongside.":" and the grit to never let a rival past once alongside.",
 ", plus a dogged fighting spirit.":" and a dogged fighting spirit.",
 "Its ":"I hope its ",
 "Hope its racing ability gets passed on to its foals.":"racing ability gets passed on to its foals.",
 "I hope its racing ability is passed on to its foals.":"racing ability is passed on to its foals.",
 "This horse's foals ":"Its foals should inherit its ",
 "should inherit its racing ability, but ":"racing ability, but",
 "Its foals should inherit its ability, but might race in an all-or-nothing style.":"racing ability, but might race in an all-or-nothing style.",
 "Its foals should inherit its ability, but may race in an all-or-nothing style.":"racing ability, but may race in an all-or-nothing style.",
 "Its foals should inherit its ability, but might be at the mercy of how the race unfolds.":"racing ability, but might be at the mercy of how the race unfolds.",
 "Its foals should inherit its ability, but may be at the mercy of how the race unfolds.":"racing ability, but may be at the mercy of how the race unfolds.",
}
_NEWSIRE={"A new stallion horse country has high hopes for.":"A new stallion that breeders have high hopes for."}
_VAL={"Currently valued at ":"Currently ","Return to the stable: ":"It's due back at the stable in "," is planned.":"."}
_SIB={"maiden ":"Maiden ","open-class ":"Open-class ","allowance-class ":"Allowance-class ",
      "maiden-class ":"Maiden ","stakes-class ":"Stakes-class "}
REP={
 '2:25':{"but it's growing up nicely.":"It's growing up nicely."},
 '2:27':{"Currently, ":"Currently resting due to "},
 '2:51':{"right now.":" right now."},'2:54':{"right now.":" right now."},
 '2:63':{"- that's its current valuation.":"."},'2:68':{"I'm told it's going well.":"It's going well."},
 '2:181':{"Though only a 3yo, it's said to be the future of ":"At 3, it's hailed as the future of"},
 '2:204':{"USA":" USA","Europe":" Europe","Oceania":" Oceania","Hong Kong":" Hong Kong","Dubai":" Dubai","Singapore":" Singapore"},
 '2:118':_NEWSIRE,'2:123':_NEWSIRE,
 '2:128':_KICK,'2:130':_KICK,
 '2:129':{"Splendid":"splendid","Superior":"superior"},
 '2:133':_VAL,'2:134':_VAL,
 '2:135':{"rest":"resting","fatigue":"recovering from fatigue","poor health":"recovering from poor health"},
 '2:136':{"About a year away (":"about a year (","More than six months away (":"more than six months (","About six months away (":"about six months (",
          "About five months away (":"about five months (","About four months away (":"about four months (","About three months away (":"about three months (",
          "About two months away (":"about two months (","About one month away (":"about one month (", " weeks later":" weeks"},
 '2:155':{", it'll be able to race soon after.":".",", it looks able to race soon after.":".","At this rate, ":"At this rate, it should be able to race soon after ",
          " is in progress.":".", "Bit by bit, ":"Bit by bit, we're working on its "},
 '2:158':{" too":" and"," shouldn't bother it either.":" - neither seems to bother it."},
 '2:162':{", but it has fully recovered now.":" was a problem, but it has fully recovered now."},
 '2:165':{" is currently":" is currently in ",", on an overseas campaign.":" on an overseas campaign."},
 '2:167':{" is currently":" is currently on its way home from ",", returning from ":" (","." :")."},
 '2:194':{"With a G1-winning dam, this horse ":"Its dam is a G1 winner.\n"},
 '2:197':'SIB', '2:198':'SIB',
 '2:199':{"Older":"younger","Younger":"older"},
 '2:200':{", winner of races including ":".\n"},
 '2:201':{"Though only a 3yo, it's said to be the future of ":"At 3, it's hailed as the future of","-year-old unraced horse.":"-year-old that hasn't raced yet.",
   "It's said to be the future of racing.":" racing.","It's said to be one of the stars of racing.":" racing.",
   "; it's said to be among the very best.":", it's rated as one of the very best.","; it's said to be among the stronger ones.":", it's rated as one of the stronger ones.",
   "; it's said to be mid-level.":", it's rated mid-level."},
 '2:202':{"Its next race is planned to be ":"\nIts next race is planned to be ","It's currently not yet ":"\nIt's currently not yet ","It's currently ":"\nCurrently, ","Its next race isn't decided yet.":"\nIts next race isn't decided yet.",
          "Its next race hasn't been decided yet.":"\nIts next race hasn't been decided yet."},
 '2:203':{"For rest":"for rest, it's on ","Due to fatigue":"due to fatigue, it's on ",", it's on ":" has it on "},
 '2:191':'R206',
 '2:206':{"Also, its body is showing ":"\nAlso, "," is showing.":" is showing on its body.",
          "Also, the area around its eyes is darkening.":"\nAlso, the area around its eyes looks dark.",
          " - it might have that...":" - it may be setting in...","Also, ":"\nAlso, its "," stands out.":" coat stands out.",".":" is showing on its body."},
}
# racer-comment sentences that follow another sub-message need a leading space
for _s in ["It's said to be the strongest of its generation.","It's said to be among the top of its generation.","It's said to be near the top of its generation.",
           "It's said to be mid-level in its generation.","It's not getting much attention in this generation.","It's getting almost no attention in this generation."]:
    pass
SUB={2:[("in horse country","among breeders"),("let a rival by once alongside","let a rival past once alongside"),(" - that's its strength.",". That's its greatest strength."),("supplely","smoothly"),("It moves supple.","It moves smoothly."),("It moves real supple.","It moves real smooth."),("Nobody at the farm doesn't know about this one.","Everyone at the farm knows about this one.")]}
import re as _r
PRE={
 '2:181':[(rb' (\x01C\xecN\x00\x00)', b'\\1')],
 '2:27':[(rb'\x01"(?: -|,) resting ', b'')],
 '2:198':[(rb'( is its )', rb'\1')],
 '2:200':[(rb'(\x02[\x45]\xc8)', b'\x01"Wins include \\1')],
 '2:201':[(rb'(\}%100)(\x01C\xecN\x00\x00)', b'\\1\x01"It\'s the shining star of\\2'),
           (rb'(\}%90)(\x01C\xecN\x00\x00)', b'\\1\x01"It\'s one of the stars of\\2'),
           (rb'(\}%(?:70|50|1|30))(\x02..\x01", it.s rated)', b'\\1\x01"Among \\2'),
           (rb' (\x01C\xecN\x00\x00)', b'\\1'),
           (rb'(=%0)(\x02\x1ee)', b'\\1\x01"It\'s a \\2')],
 '2:128':[(rb'racing ability, but ?\n?(?:\x01")?Its racing [^.\x05]*\.', b'racing ability, but they may race in an all-or-nothing style.')],
}

def SIBFIX(texts):
    t=list(texts)
    for i,x in enumerate(t):
        if x=="." and i>=2:
            t[i]=" sibling."; t[i-1]=" is its "
            if isinstance(t[i-2],str): t[i-2]=_SIB.get(t[i-2],t[i-2])
    return t

REP['2:191']=REP['2:206']

POST={
 '2:197':[(rb'\n(?:\x01")?(sibling\.)', b' \\1'),(rb' \n(?:\x01")?(sibling\.)', b' \\1')],
 '2:198':[(rb'\n(?:\x01")?(sibling\.)', b' \\1')],
 '2:181':[(rb'(\x01C\xecN\x00\x00\x01")\n\x01"(racing\.)', b'\\1 \\2')],
 '2:201':[(rb'(\x01C\xecN\x00\x00\x01")\n\x01"(racing\.)', b'\\1 \\2')],
}

# ---- play-test 3 (2026-11-27) ----
# stat is called "Grit" on every screen; dialogue said "Guts"
SUB['*']=[("Guts","Grit")]
# secretary first-name var (\x02 j \xc8) already starts with a space -> drop ours ("it's  Yayoi", "Oh,  Yayoi")
POST['*']=[(rb' (\x02[ij]\xc8)',rb'\1')]
# path-name call output already starts with a space
# (pt5: removed 'On the\x01C' rule - path call output has no leading space -> 'theColt')
# play-test 4: game wraps these mid-word after a long line-name variable -> break the line ourselves
POST['4:515']=POST.get('4:515',[])+[(rb' recognized as a great(?: |\n\x01")family line',b' recognized\x0a\x01"as a great family line')]
POST['4:506']=POST.get('4:506',[])+[(rb' are(?: |\n\x01")remarkable, after all\.',b'\x0a\x01"are remarkable, after all.')]
POST['*']=POST.get('*',[])+[(rb'(\x02L\xc8\x01" line\'s [^\x05\n\x01\x02]*?) are(?: |\n\x01")remarkable',b'\\1\n\x01"are remarkable')]

# ---- play-test 5 (2026-11-28): pt5_fix.py ----
import os as _os5, re as _r5
_P5={}
exec(open(_os5.path.expanduser('~/work/v104/pt5_fix.py')).read(),_P5)
if _os5.environ.get('P5OFF'): _P5={'RW':[],'RX':[],'RXF':[]}
P5HIT={}
def _rwf(i,n):
    def f(x):
        P5HIT[i]=P5HIT.get(i,0)+1; return n
    return f
for _i,(_k,_o,_n) in enumerate(_P5['RW']):
    PRE.setdefault(_k,[]).append((_r5.escape(_o.encode('latin-1')), _rwf(_i,_n.encode('latin-1'))))
P5RW=_P5['RW']
for _k,_a,_b in _P5['RX']: PRE.setdefault(_k,[]).append((_a,_b))
for _k,_a,_f in _P5['RXF']: PRE.setdefault(_k,[]).append((_a,_f))
# name + "Owner" title glued ("PatcherOwner") -> just the name
POST['*']=POST.get('*',[])+[(rb'(\x02[\x01-\xff][\xc8-\xcb]\x01")Owner(?=[ ,.!?\n\x05])',rb'\1'),
  (rb'\x01"Owner(?=[ ,.!?\n\x05])(?<=\x02\x01\xc9\x01"Owner)',b'\x01"'),
  (rb'(?: |\n\x01")\(jockey\)',b''),
  (rb' (\x02\x02\xc8)',rb'\1')]
# pt5 terms (user decision 2026-11-28): Umasonality (full) / Umasona (short)
SUB['*']=SUB.get('*',[])+[("Umarsonalities","Umasonalities"),("Umarsonality","Umasonality"),("Horsonalities","Umasonalities"),("Horsonality","Umasonality"),("horsonality","Umasonality")]
# help headings "(1) Heading^02" glued to body text -> "(1) Heading: body"  (applied on final messages)
FINALRX=[(rb'(\(\d\)[^\x05\n^\x01]{2,60}?)\^02\x01"(\^04~\d~)?\x01"(?=[A-Za-z"])', lambda m: m.group(1)+b'^02\x01": '+(m.group(2) or b'')+b'\x01"'),
  (rb'\^02\x01"- ', b'^02\x01" - '), (rb'\^02\x01">', b'^02\x01" >')]
# pt5 phrase fixes (help pages etc.), matched across line breaks; key 'B:' = whole bank
TXFIX=[
 ('19:','The most important on the racehorse screen are','The most important parts of the racehorse screen are'),
 ('19:','at the right level it can beat its ability','at the right level it can perform beyond its ability'),
 ('19:','connections) .','connections).'),
 ('19:','from the start All-Round:','from the start\n\x01"All-Round:'),
 ('19:','(burst, Stamina, Grind, etc.)','(Burst, Stamina, Grind, etc.)'),
 ('19:','let you enjoy, as reading, the history','let you read the history'),
 ('19:','field  *Especially','field *Especially'),
 ('19:','A set alias can','A set nickname can'),
 ('19:','\x01" A horse\'s Umasonality','\x01"A horse\'s Umasonality'),
 ('19:','\x01" The Umasonality screen','\x01"The Umasonality screen'),
]
REP['19:221']={", and^04~8~":" and^04~8~"," - depending on it, ":", and change","automatically^02":"automatically^02","change.":"."}
REP['19:225']={"The farm manager can be replaced every 10 years (years ending in 2 - depending on the start year,":"The farm manager can be replaced every 10 years (in years ending in 2; depending on the start year,","from the second year ending in 2)":"from the second such year)"}
REP['19:553']={", or ":" and ","and taking actions suited to the horse's Umasonality^02":"taking actions suited to the horse's Umasonality^02"," - by doing so, ":" ","raise trust.":"raise trust."}
REP['19:847']={"This is^04~8~":"This is called a^04~8~","break the cap^02":"Cap Break^02"}
FINALRX.append((rb'\^02\x01"\x01"(?=[A-Za-z])', b'^02\x01" \x01"'))
TXFIX.append(('19:','but it rarely grows past the cap.','but occasionally it grows past the cap.'))
# '" ^Word^ "' -> '"^Word^"' (spaces inside quotes around a coloured word)
FINALRX.append((rb'" (\^04~\d~\x01")([^\x01^\n]{1,40})\^02\x01" "', lambda m: b'"'+m.group(1)+m.group(2)+b'^02\x01""'))
FINALRX.append((rb'"" (\^04~\d~\x01")', lambda m: b'""'+m.group(1)))
TXFIX.append(('15:','"Reading", in full-width katakana or hiragana.','"Reading", in English letters or katakana.'))
_FS={}
exec(open(__import__('os').path.expanduser('~/work/v104/facshort.py')).read(),_FS)
# pt5: facility Info box (bank 1, msgs 1:209-1:366) is narrow (~36 chars); the game splits words. Re-wrap at 34 chars.
FACPX=1680  # 'Up to 15 farm staff can be assigne' = 1731 fits, +'d' did not
def _facwrap_run(x):
    s=x.group(0)
    if '\x02' in s.decode('latin-1') or b'^0' in s: return s
    s=s.replace(b'\x1bH',b'')
    parts=[t.strip() for t in re.findall(rb'\x01"([^\n\x05\x01]*)',s)]; txt=b''
    for t in parts:
        if txt and t[:1].isupper() and txt[-1:].isalpha(): txt+=b'.'
        txt=txt+b' '+t if txt else t
    for _a,_b in _FS['FACSHORT']: txt=txt.replace(_a,_b)
    _W=lambda b:__import__('wrap').tw(b.decode('latin-1'))
    if _W(txt)<=FACPX: return b'\x01"'+txt
    lines=[];cur=b''
    for w in txt.split(b' '):
        if cur and _W(cur+b' '+w)>FACPX: lines.append(cur);cur=w
        else: cur=cur+b' '+w if cur else w
    if cur: lines.append(cur)
    return b'\n'.join(b'\x01"'+l for l in lines)
import re
def FINALFN(bi,k,m):
    if bi==1 and 209<=k<=366: return re.sub(rb'\x01"[^\x05\x02]*?(?=\x05)',_facwrap_run,m)
    return m
# pt5: line-start player/secretary name var glued to the next word ("NanakaIf you say so", "PatcherBoss")
_TITLES={b'Boss',b'Sensei',b'Senpai',b'Professor'}
def _nameglue(m):
    w=m.group(3)
    if w in _TITLES: return m.group(1)+m.group(2)+b'\x01" '+w
    return m.group(1)+m.group(2)+b'\x01", '+(w if w==b'I' else w[:1].lower()+w[1:])
FINALRX.append((rb'((?:^|\n|\x05|\x1bH|\x02[^\x01]{1,3}?\x04[^\x01\x02]{0,6}))(\x02[\x01\x02ij][\xc8\xc9])\x01"([A-Z][a-z]*)', _nameglue))
TXFIX.append(('19:',"broodmare's vitality returns to 0.","broodmare's vitality returns to 0."))
# pt5: orphan short last word on its own line ("returns to\n0.", "...,\nbut", "\nOK?") -> join to previous line if it fits
import wrap as _wr
def _orphan(m,bi):
    lim=_wr.LIMITS.get(bi,_wr.LIMIT)
    def f(x):
        prev,w=x.group(1),x.group(3)
        if b'\x02' in prev or b'\x01C' in prev: return x.group(0)
        txt=re.sub(rb'\x01"|\x1bH|\^0\d(?:~\d+~)?',b'',prev).decode('latin-1')
        if _wr.tw(txt+' '+w.decode('latin-1').strip())>lim:
            mm=re.match(rb'(.*[^ ]) ([A-Za-z\'\-]+)$',prev,re.S)
            if not mm or len(re.sub(rb'\x01"|\x1bH',b'',mm.group(1)))<12: return x.group(0)
            return mm.group(1)+b'\n'+x.group(2)+mm.group(2)+b' '+w.strip()
        return prev+b' '+x.group(2)+w.strip()
    return re.sub(rb'((?:^|(?<=\n)|(?<=\x05))[^\n\x05]{20,}?)\n((?:\x1bH)?\x01"(?:\^0\d~\d+~\x01")?)([A-Za-z0-9]{1,3}[.,!?]? ?)(?=\n|\x05|$)',f,m)
_FINALFN0=FINALFN
def FINALFN(bi,k,m):
    m=_FINALFN0(bi,k,m)
    if bi!=31: m=_orphan(m,bi)
    return m
POST['31:509']=POST.get('31:509',[])+[(rb"\x01\"It's almost post time for the (?=\x02)",b"\x01\"It's almost post time\x0a\x01\"for the ")]
POST['6:289']=POST.get('6:289',[])+[(rb"\x01\"(?:,| -) winning it makes me so(?:\n\x01\"| )happy\. ",b'\x01" - what a win!\x0a\x01"'),(rb'\x01"\n\x01"were lucky to have it\.',b'\x01" were lucky to have it.')]
# \x1bV = "rotate the next 2-byte glyph" (vertical ellipsis); before English text it eats 2 letters ("Wh" -> "at on earth happened?")
FINALRX.append((rb'\x1bV(?![\x81-\x9f\xe0-\xfc])', b''))
# 3:420/421: region and jockey vars were swapped ("Europe, who was on a long stint in Kobayashi Miku jockey is back")
FINALRX.append((rb'\x01C\xcbv\x00\x00\x01", who was on a long stint in \x022\xcb\x01" jockey \x01",? is\n\x01"back(?:, I\'m told)?\. All that experience abroad must have sharpened(?: their\n\x01"riding|\n\x01"their riding)\.',
  b'Jockey \x022\xcb\x01" is back from a long stint in \x01C\xcbv\x00\x00\x01".\n\x01"All that experience abroad must have sharpened\n\x01"their riding.'))
