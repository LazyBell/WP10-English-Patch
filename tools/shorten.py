import json,os,re,collections,sys
sys.path.insert(0,os.path.expanduser('~/tools'))
W=os.path.expanduser('~/work/')
S=json.load(open(W+'pc/exe_strings.json'))
T=json.load(open(W+'translations.json'));T.update(json.load(open(W+'data_tr.json')));T.update(json.load(open(W+'pc/extra_tr.json')))
slot={}
for va,o,sl,s in S:
    if s in T: slot[s]=min(sl,slot.get(s,999))
AB=[('Information','Info'),('information','info'),('Settings','Set.'),('Setting','Set.'),('Championship','Champ.'),('Championships','Champs'),('Registration','Reg.'),('Register','Reg.'),('Breeding','Brdg'),('Breeder','Brdr'),('Stallion','Stln'),('Stallions','Stlns'),('Broodmare','Mare'),('Broodmares','Mares'),('Racehorse','Horse'),('Racecourse','Course'),('Training','Trng'),('Trainer','Trnr'),('Jockey','Jky'),('Jockeys','Jkys'),('Distance','Dist.'),('Condition','Cond.'),('Performance','Perf.'),('Selection','Select'),('Confirm','OK'),('Confirmation','Confirm'),('Number','No.'),('number','no.'),('Management','Mgmt'),('Manager','Mgr'),('International','Intl'),('international','intl'),('Japanese','JP'),('Japan','JP'),('Europe','EU'),('American','US'),('America','US'),('Owner','Ownr'),('Ownership','Own.'),('Average','Avg'),('average','avg'),('Maximum','Max'),('Minimum','Min'),('Victory','Win'),('Victories','Wins'),('Results','Res.'),('Result','Res.'),('History','Hist.'),('Record','Rec.'),('Records','Recs'),('Season','Ssn'),('Schedule','Sched.'),('Facilities','Facil.'),('Facility','Facil.'),('Character','Char.'),('Characters','Chars'),('Generation','Gen.'),('Pedigree','Pedig.'),('Ability','Abil.'),('Abilities','Abil.'),('Overseas','O/seas'),('Purchase','Buy'),('Retirement','Retire'),('Retired','Ret.'),('Difficulty','Diff.'),('Special','Spcl'),('Display','Show'),('Message','Msg'),('Messages','Msgs'),('Player','Plyr'),('Year','Yr'),('Years','Yrs'),('year','yr'),('years','yrs'),('Month','Mo.'),('Week','Wk'),('Weeks','Wks'),('Daughter','Dtr'),('Mother','Dam'),('Father','Sire'),(' and ',' & '),(' the ',' '),('The ',''),(' of ',' '),(' for ',' '),('Points','Pts'),('Point','Pt'),('points','pts'),('Count','Cnt'),('Total','Tot.'),('Prize','Prz'),('Money','$'),('Rating','Rtg'),('Ranking','Rank'),('Leading','Lead.'),('Horse','Hrs'),('horse','hrs'),('Horses','Hrs'),('Race','Rc'),('Races','Rcs')]
def tryab(e,n):
    if len(e)<=n: return e
    for a,b in AB:
        e=e.replace(a,b)
        if len(e)<=n: return e
    return None
if __name__=='__main__':
    man=json.load(open(W+'pc/short_manual.json')) if os.path.exists(W+'pc/short_manual.json') else {}
    res={};todo=[]
    for s,n in slot.items():
        e=T[s]
        if len(e.encode('ascii','ignore'))<=n: continue
        if s in man and len(man[s])<=n: res[s]=man[s];continue
        v=tryab(e,n)
        if v: res[s]=v
        else: todo.append((s,e,n))
    json.dump(res,open(W+'pc/short_tr.json','w'),ensure_ascii=False,indent=0)
    json.dump(todo,open(W+'pc/short_todo.json','w'),ensure_ascii=False,indent=0)
    print('auto',len(res),'todo',len(todo))
