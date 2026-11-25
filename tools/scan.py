from fd import *
import collections,re,sys
by=collections.defaultdict(list)
for x in E: by[x['tk']].append(x)
res=[]
for tk,lst in sorted(by.items(),key=lambda a:-len(a[1])):
    samp=[]; jp8=jps=0; tot=0
    for x in lst[:3]:
        try:
            out=unpack(raw(x))[0]
        except Exception as ex:
            samp.append('ERR'); continue
        tot+=len(out)
        jp8+=len(re.findall(rb'(?:[\xe3-\xe9][\x80-\xbf]{2}){3,}',out))
        jps+=len(re.findall(rb'(?:[\x82\x83\x88-\x9f][\x40-\xfc]){3,}',out))
        samp.append(out[:8])
    res.append((tk,len(lst),sum(x['fs'] for x in lst),jp8,jps,samp))
    print(hex(tk),len(lst),sum(x['fs'] for x in lst),'utf8jp',jp8,'sjis',jps,samp[:2],flush=True)
