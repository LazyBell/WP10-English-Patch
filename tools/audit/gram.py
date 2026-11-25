import json,re,sys,collections,os
D=json.load(open(os.path.expanduser('~/work/pc/texts_dump.json'),encoding='utf8'))
R=[
 ('and_its', r"\{V\} and \{V\}[^.!?]{0,40}\b(it's|it is|it was|its)\b"),
 ('both_it', r"\bboth\b[^.!?]{0,30}\bit\b"),
 ('double_word', r"\b(\w+) \1\b"),
 ('a_vowel', r"\ba [aeiouAEIOU]\w"),
 ('an_cons', r"\ban [bcdfgjklmnpqrstvwxyz]\w"),
 ('space_punct', r" [,.!?]"),
 ('dbl_space', r"[^ ]  [^ ]"),
 ('dash_punct', r"(, -|: -|- ,|- :|-\s*-|\.\s*-$)"),
 ('cap_after_comma', r", (The|It|We|You|They|This)\b"),
 ('race_noart', r"\b(won|win|winning|in|at|for|runs? in|enter(?:ed)?|take on|aim(?:ing)? for)( last week's| this week's)? \{V\} (win|race|was|is)\b"),
 ('lower_start', r"(^|[.!?] )\{V\}?[a-z]"),
 ('it_they', r"\bthey (is|was|has)\b"),
 ('ends_colon', r"[:,] *$"),
 ('ordinal', r"\{V\}th\b"),
]
out=collections.defaultdict(list)
for k,t in D.items():
    if k.startswith('20:'): continue
    s=''
    for e in t: s+=(e if isinstance(e,str) else '')+'{V}'
    s=s[:-3]
    for n,p in R:
        for m in re.finditer(p,s):
            out[n].append((k,s[max(0,m.start()-50):m.end()+40]))
json.dump(out,open('/tmp/gram.json','w'),ensure_ascii=False)
for n,_ in R: print(n,len(out[n]))
