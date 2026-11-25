B={'ア':'a','イ':'i','ウ':'u','エ':'e','オ':'o','カ':'ka','キ':'ki','ク':'ku','ケ':'ke','コ':'ko','サ':'sa','シ':'shi','ス':'su','セ':'se','ソ':'so','タ':'ta','チ':'chi','ツ':'tsu','テ':'te','ト':'to','ナ':'na','ニ':'ni','ヌ':'nu','ネ':'ne','ノ':'no','ハ':'ha','ヒ':'hi','フ':'fu','ヘ':'he','ホ':'ho','マ':'ma','ミ':'mi','ム':'mu','メ':'me','モ':'mo','ヤ':'ya','ユ':'yu','ヨ':'yo','ラ':'ra','リ':'ri','ル':'ru','レ':'re','ロ':'ro','ワ':'wa','ヰ':'i','ヱ':'e','ヲ':'o','ン':'n','ガ':'ga','ギ':'gi','グ':'gu','ゲ':'ge','ゴ':'go','ザ':'za','ジ':'ji','ズ':'zu','ゼ':'ze','ゾ':'zo','ダ':'da','ヂ':'ji','ヅ':'zu','デ':'de','ド':'do','バ':'ba','ビ':'bi','ブ':'bu','ベ':'be','ボ':'bo','パ':'pa','ピ':'pi','プ':'pu','ペ':'pe','ポ':'po','ヴ':'vu','ァ':'a','ィ':'i','ゥ':'u','ェ':'e','ォ':'o','ヵ':'ka','ヶ':'ke','ヮ':'wa','ャ':'ya','ュ':'yu','ョ':'yo','ヽ':'','ヾ':'','・':' '}
Y={'ャ':'ya','ュ':'yu','ョ':'yo'}
def romaji(s):
    s=''.join(chr(ord(c)+0x60) if 'ぁ'<=c<='ゖ' else c for c in s)
    out=[];i=0
    while i<len(s):
        c=s[i]; n=s[i+1] if i+1<len(s) else ''
        if c=='ッ':
            nx=romaji(s[i+1:i+3])[:1] if i+1<len(s) else ''
            out.append('t' if nx=='c' else nx); i+=1; continue
        if c=='ー': i+=1; continue
        if n in Y and c in B:
            b=B[c]
            if b in('shi','chi','ji'): out.append(b[:-1]+Y[n][1:]) 
            else: out.append(b[:-1]+Y[n])
            i+=2; continue
        if n in 'ァィゥェォ' and c in B and n:
            v=B[n]; b=B[c]
            if c=='フ': out.append('f'+v)
            elif c=='ヴ': out.append('v'+v)
            elif c in 'テデ' and n=='ィ': out.append(b[0]+'i')
            elif c in 'トド' and n=='ゥ': out.append(b[0]+'u')
            elif c=='ウ': out.append('w'+v)
            elif c in 'シジチ' and n=='ェ': out.append(b[:-1]+'e')
            else: out.append(b[:-1]+v)
            i+=2; continue
        out.append(B.get(c,c)); i+=1
    r=''.join(out)
    # simplify long vowels
    for a,b2 in (('ou','o'),('oo','o'),('uu','u')): r=r.replace(a,b2)
    r=r.replace('nb','mb').replace('np','mp').replace('nm','mm') if False else r
    r=''.join(ch for ch in r if ord(ch)<128)
    return r
def cap(s): return s[:1].upper()+s[1:]
