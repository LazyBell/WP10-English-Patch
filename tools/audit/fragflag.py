import json,re,sys
J=json.load(open('/tmp/jpen.json'))
P=set(json.load(open('/tmp/pname_msgs.json')))
banks=set(sys.argv[1].split(',')) if len(sys.argv)>1 else None
flag={}
for key,(js,en) in J.items():
    if banks and key.split(':')[0] not in banks and not (sys.argv[2:] and key in P): continue
    bad=0
    for i in range(1,len(js)):
        j,e=js[i],en[i]
        if not isinstance(e,str) or not j: continue
        if re.match(r'^[のとにをがはでへもや]',j) and (e.startswith(' - ') or e.startswith(' -') or re.match(r'^ ?[a-z]',e) and not re.match(r"^ ?(and|or|is|was|has|had|will|would|can|could|should|seems?|'s|to|in|at|of|for|with|on|by|from|won|wins|got|gets|took|takes|made|makes|did|does|said|says|says,|race|races|ran|runs|went|goes|came|comes|showed|shows|looks|looked)\b",e)):
            bad+=1
    if bad: flag[key]=bad
json.dump(sorted(flag,key=lambda k:(int(k.split(':')[0]),int(k.split(':')[1]))),open('/tmp/flag.json','w'))
print(len(flag))
