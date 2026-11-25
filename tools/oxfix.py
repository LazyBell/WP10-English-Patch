# Umasona O/X (JP ○/×) -> plain English. Applied to WMM segs/msg_over, exe strings and EVENT text.
import re
N=['Power Ride','Windmill Whip','Busy Schedule','New Places','Crowds']
R=[(r'Power Ride O or Windmill O jockeys','Power Ride or Windmill jockeys'),
   (r'PowerRide/Windmill O jockey','Power Ride/Windmill jockey'),
   (r'Power Ride or Windmill O jockey','Power Ride or Windmill Whip jockey'),
   (r'(Power Ride|Windmill Whip|Windmill) O jockey',r'\1 jockey'),
   (r'With Power Ride O or Windmill O jockeys','With Power Ride or Windmill jockeys')]
for n in N:
    R+=[(r'Evolved '+re.escape(n)+r' O\b','Evolved "Likes '+n+'"'),(re.escape(n)+r' O\b','Likes '+n),(re.escape(n)+r' X\b','Hates '+n)]
SHORT={'PowerR O':'PowerRide+','PowerR X':'PowerRide-','PowerR O+':'PowerRide++','Windmill O':'Windmill+','Windmill X':'Windmill-','Windmil O+':'Windmill++',
       'Busy O':'Busy+','Busy X':'Busy-','Busy O+':'Busy++','NewPlc O':'NewPlace+','NewPlc X':'NewPlace-','NewPlc O+':'NewPlace++','Crowds O':'Crowds+','Crowds X':'Crowds-'}
RC=[(re.compile(a),b) for a,b in R]
def oxfix(s,short=False):
    if short and s in SHORT: return SHORT[s]
    for a,b in RC: s=a.sub(b,s)
    return s
