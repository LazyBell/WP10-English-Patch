# Playtest-5 (2026-11-28) dialogue fixes, 1.0.4 message keys. Loaded by hc_fix.py.
# RW: (key, old, new) exact replacements (all occurrences) on the built message BEFORE wrap.
#     key '*' = every message. Strings are latin-1 views of the WMM bytes.
# RX: (key, regex(bytes), repl bytes) same stage; RXF: (key, regex, function).
Q='\x01"'; BH='\x1bH'; H1='\x02\x1e\xc8'; H2='\x02\x1f\xc8'; R='\x02D\xc8'; N='\x02\x01\xc8'
TR='\x01C}\x00\x00\x00'; HIME='\x01Cz\x00\x00\x00'; JK='\x01C_\x00\x00\x00'
C8='^04~8~'; C4='^04~4~'; E='^02'
RW=[
 # tutorial / first weeks
 ('36:720', E+Q+'\n'+Q+', so please keep that in mind.', E+Q+', so please keep that in mind.'),
 ('27:18',  E+Q+'\n'+Q+', so please keep that in mind.', E+Q+', so please keep that in mind.'),
 ('27:44', H1+Q+" I'll do everything I can so that \n"+BH+Q+'wins as many races as possible.', Q+"I'll do everything I can so that "+H1+Q+' wins as many races as possible.'),
 ('36:721', '\n'+H1+Q+' and '+H2+Q+" I'll do everything I can so that \n"+BH+Q+'wins as many races as possible.', '\n'+Q+"I'll do everything I can so that "+H1+Q+' and '+H2+Q+' win as many races as possible.'),
 ('27:94', Q+', '+TR+Q+'.\n'+H1+Q+' - could you tell us more about them?', TR+Q+', could you tell us more about '+H1+Q+'?'),
 ('36:724', H1+Q+' Its distance aptitude', H1+Q+"'s distance aptitude"),
 ('36:729', E+Q+', \n'+Q+'is what it shows.', E+Q+'.'),
 ('36:735', Q+'By the way, '+H1+Q+' and '+H2+Q+' Are their futures decided?', Q+'By the way, have the plans for '+H1+Q+' and '+H2+Q+' been decided?'),
 ('36:735', Q+'By the way, '+H1+Q+' and '+H2+Q+' Is anything decided about their futures?', Q+'By the way, is anything decided for '+H1+Q+' and '+H2+Q+'?'),
 ('36:735', Q+'By the way, '+H1+Q+' and '+H2+Q+' Have their futures been decided?', Q+'By the way, have the plans for '+H1+Q+' and '+H2+Q+' been decided?'),
 ('36:736', E+Q+', and \n'+H1+Q+' in January week 3.', E+Q+', and '+H1+Q+' in January week 3.'),
 ('36:750', Q+'Yes, '+C8+'\x022\xcb'+Q+' (jockey) -'+R+E+Q+' - entry completed.', Q+'Yes, entry complete: '+C8+'\x022\xcb'+Q+' in the '+R+E+Q+'.'),
 ('27:117', '\n'+H1+Q+' and '+H2+Q+"'s personalities too, but\n"+Q+'let me explain next week as part of the pre-race check.', '\n'+Q+"I'll explain "+H1+Q+' and '+H2+Q+"'s personalities next week, as part of the pre-race check."),
 ('27:123', '"Reading the Horse Screen"', '"Reading the Racehorse Screen"'),
 ('48:97', Q+'- '+C8+Q+'Missions that teach the basics'+E+Q+' - take on\n'+Q+'- At the end of 2025, '+C8+Q+'rewards based on how many missions you completed'+E+Q+' - receive',
           Q+'- Take on '+C8+Q+'missions that teach the basics'+E+'\n'+Q+'- At the end of 2025, receive '+C8+Q+'rewards based on how many missions you completed'+E),
 ('27:137', Q+"Well, first I'd like you to know that \n"+H1+Q+' - and every horse, not just them - \n'+Q+'has its own personality', Q+"Well, first I'd like you to know that "+H1+Q+', like every horse,\n'+Q+'has its own personality'),
 ('28:478', Q+'Here, what we two were taught at the stable,\n'+Q+'let me explain "Horse Info" in more depth.', Q+"Let me go over what we learned at the stable\n"+Q+'and explain "Horse Info" in more depth.'),
 ('28:513', 'gradually revealed\n'+Q+'From parent to child, child to grandchild -\n', 'gradually revealed.\n'+Q+'From parent to child, child to grandchild...\n'),
 ('28:521', Q+'Checking development to see how soon\n'+Q+'an ability will grow\n'+Q+'while developing seems important.', Q+'It seems important to check development\n'+Q+'to see how soon each ability will grow.'),
 ('28:522', 'separate from normal abilities,\n'+C8+Q+'has "Traits"'+E+Q+' too.', 'separate from normal abilities,\n'+Q+'horses have '+C8+Q+'"Traits"'+E+Q+' too.'),
 ('28:524', BH+Q+'up to 8 of them'+'\x05', BH+Q+'up to 8 of them.'+'\x05'),
 ('28:526', C8+Q+'"Main Jockey"'+E+Q+" - set one and they'll prioritize riding for you,", Q+'Set a '+C8+Q+'"Main Jockey"'+E+Q+" and they'll prioritize riding your horses,"),
 ('*', 'To sum up, something like this\x05', 'To sum up:\x05'),
 ('27:209', '\x02B\xc9'+Q+' told us about '+H2+Q+' - looks like a tough opponent.', Q+'From what \x02B\xc9'+Q+' told us, '+H2+Q+' looks like a tough opponent.'),
 ('27:209', '\x02B\xc9'+Q+' told us about '+H2+Q+' - it looks like a tough opponent.', Q+'From what \x02B\xc9'+Q+' told us, '+H2+Q+' looks like a tough opponent.'),
 ('45:0', Q+"This week's "+H1+Q+"'s first start is on my mind, but\n"+Q+'Next month '+H2+Q+' has a race coming up too.', H1+Q+"'s first start this week is on my mind,\n"+Q+'but '+H2+Q+' has a race next month too.'),
 ('45:0', Q+"This week's "+H1+Q+"'s first start is on my mind, but\n"+Q+'Next month '+H2+Q+' also has a race coming up.', H1+Q+"'s first start this week is on my mind,\n"+Q+'but '+H2+Q+' also has a race next month.'),
 ('45:2', '\n'+H1+Q+' and '+H2+Q+" - we came to see how they're doing", '\n'+Q+'We came to see how '+H1+Q+' and '+H2+Q+' are doing'),
 ('45:9', Q+"That's "+H1+Q+' and '+H2+Q+': \n'+Q+"It's because it has a good bond!", Q+"That's because "+H1+Q+' and '+H2+Q+' have a good bond!'),
 ('45:13', TR+Q+'- you know each other, '+HIME+Q+'.', TR+Q+' and '+HIME+Q+', you know each other?'),
 ('45:16', H1+Q+' and '+H2+Q+' - between them,\n'+Q+'A new bond "Attracted" was formed', Q+'A new bond, "Attracted", formed between\n'+H1+Q+' and '+H2+Q+'.'),
 ('45:18', '"Bestie"'+E+Q+' and \n'+Q+'Getting fired up', '"Bestie"'+E+Q+',\n'+Q+'getting fired up'),
 ('45:18', '"Rival"'+E+Q+', \n'+Q+'And ones who fight', '"Rival"'+E+Q+',\n'+Q+'and ones who fight'),
 ('45:26', TR+Q+'\n'+Q+'Horses\' "bonds" - since we know now, ', TR+Q+'.\n'+Q+'Now that we know about bonds, '),
 ('45:26', TR+Q+'\n'+Q+'Horses\' "bonds" - since we know, ', TR+Q+'.\n'+Q+'Now that we know about bonds, '),
 ('45:26', 'Now that we know about bonds, I want to keep them in mind.', "Now that we know about bonds, I'll keep them in mind."),
 ('31:405', E+Q+' \n'+Q+'Relationship "'+C8+Q+'%s'+E+Q+' "\n'+Q+'Seems it was formed.', E+Q+' formed\n'+Q+'an "'+C8+Q+'%s'+E+Q+'" bond.'),
 ('27:212', '\n'+H1+Q+' - is it in good condition?', '\n'+Q+'Is '+H1+Q+' in good condition?'),
 ('27:213', '\n'+H1+Q+" - let's believe in them.", '\n'+Q+"Let's believe in "+H1+Q+'.'),
 ('27:216', '\n'+H1+Q+'- how is the horse looking today?', '\n'+Q+'How is '+H1+Q+' looking today?'),
 ('27:218', 'The rest is up to the jockey, ', 'The rest is up to our jockey, '),
 ('31:509', R+Q+': post time\n'+C8+H1+E+Q+' runs well -\n'+Q+"let's cheer", Q+"It's almost post time for the "+R+Q+'!\n'+Q+"Let's cheer "+C8+H1+E+Q+' on'),
 ('31:509', R+Q+' - post time\n'+C8+H1+E+Q+' runs well -\n'+Q+"let's cheer", Q+"It's almost post time for the "+R+Q+'!\n'+Q+"Let's cheer "+C8+H1+E+Q+' on'),
 # post-race
 ('15:152', Q+'Even battling through a tough race like this,\n'+BH+Q+'running well without flinching', Q+'Running well without flinching\n'+BH+Q+'in a tough race like this'),
 ('15:152', '\n'+H1+Q+' - it may have '+C4+Q+'helped it grow'+E, '\n'+Q+'It may have '+C4+Q+'helped '+H1+Q+' grow'+E),
 ('15:152', 'built its confidence,\n', 'built its confidence.\n'),
 ('25:116', Q+"Last week's "+R+Q+' '+H1+Q+' won splendidly.\n'+Q+'The rider known for "Strong," '+JK+Q+' - they must have clicked.', H1+Q+" won last week's "+R+Q+' splendidly.\n'+Q+'With '+JK+Q+', a rider known as "Strong," they must have clicked.'),
 ('25:143', Q+'It seems to move properly with a driving jockey, so\n'+BH+Q+'It seems '+H1+Q+' has '+C8+Q+'"Likes Power Ride"'+E+Q+' - it has that side.', Q+'It seems to run properly for a jockey who drives it,\n'+BH+Q+'so '+H1+Q+' has a '+C8+Q+'"Likes Power Ride"'+E+Q+' side.'),
 ('*', E+Q+'- perhaps.', E+Q+', perhaps.'),
 ('*', Q+', from here on, '+H1+Q+" - let's make use of this personality.", Q+", from here on, let's make use of "+H1+Q+"'s personality."),
 ('*', Q+', from here on, '+H1+Q+" - I'd like to make use of this personality.", Q+", from here on, I'd like to make use of "+H1+Q+"'s personality."),
 ('29:747', Q+'From here on, '+H1+Q+' - I hope I can cover it a lot as a "favorite."', Q+'From here on, I hope I can cover '+H1+Q+' a lot as a "favorite."'),
 ('29:744', '\x01Cy\x00\x00\x00'+Q+' got a happy first win.', Q+'What a wonderful first win for \x01Cy\x00\x00\x00'+Q+'.'),
 ('29:751', '\n'+N+Q+" - let's work hard so it comes true someday", '\n'+Q+"Let's work hard so it comes true someday, "+N+Q),
 ('29:751', '\n'+N+Q+' - it would be truly wonderful if it comes true someday.', '\n'+Q+'It would be truly wonderful if that came true someday, '+N+Q+'.'),
 ('*', "Whatever the result, I'm relieved", "Above all, I'm relieved"),
 ('27:106', '\n\x01C\xd8 \x04\x00'+Q+' You could say', '\n\x01C\xd8 \x04\x00\n'+Q+'You could say'),
 ('27:112', Q+'As a big goal, '+H1+Q+' is \x02\x11\x96'+Q+"'s ", H1+Q+"'s big goals are the \x02\x11\x96"+Q+' races: the '),
 ('27:112', Q+'As a big goal, '+H1+Q+' is \x02\x13e'+Q+"'s ", H1+Q+"'s big goals are the \x02\x13e"+Q+' races: the '),
 ('*', 'this path is only for understanding the current situation', 'this chart is only for understanding the current situation'),
 ('45:29', Q+'Especially the battle with the strong contender '+H2+Q+' was fierce.', Q+'The battle with the strong contender '+H2+Q+' was especially fierce.'),
 ('45:33', H1+Q+' raced with '+H2+Q+' \n'+Q+'had quite a high reputation before the race, right?', H2+Q+', who raced against '+H1+Q+',\n'+Q+'was highly rated before the race, right?'),
 ('45:38', 'The horse thought "can\'t beat Umeno Chikara" beat Umeno Chikara.', "The horse everyone thought couldn't beat Umeno Chikara did just that."),
 ('45:38', 'Even in the Spring S, ', 'Even in the Spring Stakes, '),
 ('45:42', ' calls the trigger for forming these bonds '+C8+Q+'Bond Events'+E+Q+'.\n'+Q+'Deep bonds form, or bonds advance.', ' calls the moments that form or deepen these bonds\n'+C8+Q+'Bond Events'+E+Q+'.'),
 ('45:47', 'He left...', 'She left...'),
 ('*', '" have\n'+Q+'Special bond ', '" formed\n'+Q+'the special bond '),
 ('36:972', " - you've taken your first step in owner work", ", you've taken your first step as an owner"),
 ('36:972', " - you've likely taken your first step in owner work", ", you've taken your first step as an owner"),
 ('36:981', 'If you like, could you add one request from all of us secretaries?', "If you don't mind, could we add one request of our own?"),
 ('36:983', 'our hearts strangely became one.', 'we all felt the same way.'),
 ('36:988', Q+'With great ambition, setting out on the path of an owner, \x02\x01\xcb'+Q+'\n'+Q+'what awaits beyond...', Q+'With great ambition, \x02\x01\xcb'+Q+' sets out on the path of an owner.\n'+Q+'What awaits beyond...?'),
 ('36:832', E+Q+' Will they be a new wind for us?\n'+Q+'That \x02\x01\xc9'+Q+', that person, I mean.', E+Q+'...\n'+Q+'Could that person, \x02\x01\xc9'+Q+', be a new wind for us?'),
 # win templates: "{horse} {race} - it won it." -> "{horse} won the {race}."
 ('*', H1+Q+' '+R+Q+' - it won it.', H1+Q+' won the '+R+Q+'.'),
 ('6:279', Q+', with this '+H1+Q+' '+Q+'GI \x01C1\xeb\x00\x00'+Q+'.', Q+', with this win, '+H1+Q+' is on \x01C1\xeb\x00\x00'+Q+' in G1s.'),
 ('6:280', Q+', with this '+H1+Q+' \x02\x12\x81\x01C1\xeb\x00\x00'+Q+'.', Q+', with this win, '+H1+Q+' is on \x01C1\xeb\x00\x00'+Q+'.'),
 ('6:281', '\x05\x05\x05'+Q+'Naturally, the next goal', '\x05\x05\x05\n'+Q+'Naturally, the next goal'),
 ('6:282', '\x05\x05\x05'+Q+'Naturally, the next goal', '\x05\x05\x05\n'+Q+'Naturally, the next goal'),
 ('7:580', '\x01CB\x00\x00\x00'+Q+' On its first try, ', Q+'On its first try in a \x01CB\x00\x00\x00'+Q+' race, '),
 # name-first lines
 ('24:227', Q+'Then, '+H1+Q+" - I'll have them train it.", Q+"Then I'll have them train "+H1+Q+'.'),
 ('24:227', Q+'Well then, '+H1+Q+" - I'll have them train it.", Q+"Well then, I'll have them train "+H1+Q+'.'),
 ('24:238', Q+'Then, \x02)\xc8'+Q+" - I'll have them train it.", Q+"Then I'll have them train \x02)\xc8"+Q+'.'),
 ('24:238', Q+'Well then, \x02)\xc8'+Q+" - I'll have them train it.", Q+"Well then, I'll have them train \x02)\xc8"+Q+'.'),
 ('28:20', Q+'Right away, \x028\xc8'+Q+" - let's head there.", Q+"Let's head to \x028\xc8"+Q+' right away.'),
 ('28:20', Q+'Just now \x01C{\x00\x00\x00'+Q+' - got word "farm construction completed safely."', Q+'Word just came from \x01C{\x00\x00\x00'+Q+': "Farm construction is complete."'),
 ('28:21', Q+'Then right away \x028\xc8'+Q+" - let's go~.", Q+"Then let's go to \x028\xc8"+Q+' right away~.'),
 ('28:21', Q+'Then right away \x028\xc8'+Q+" - let's head there.", Q+"Then let's head to \x028\xc8"+Q+' right away.'),
 ('28:24', Q+'Finally, \x028\xc8'+Q+" - it's done, I tell ya.", '\x028\xc8'+Q+"'s finally done, I tell ya."),
 ('28:24', Q+'Finally, \x028\xc8'+Q+" - it's complete.", '\x028\xc8'+Q+' is finally complete.'),
]
RX=[
 # conjunction left alone on a line: "...,\nbut\nNext" -> "..., but next"
 ('*', rb'(?<=[,a-z])[ ]*\n(?:\x1bH)?\x01"(but|and|so)[ ]*\n(?:\x1bH)?\x01"', b' \\1 \x01"'),
]
_LOW=set(b"It Its The This That Next Please We You They There Our Have Is In On And So When If With A An For After From Even Still Now Being Running Racing Let's Getting Toward Since Once Make Today".split())
def _lowfix(m):
    w=m.group(2)
    return m.group(1)+(w[:1].lower()+w[1:] if w in _LOW else w)
# "..., but\nIt felt" / "but Next month" -> lowercase the continuing word
RXF=[('*', rb'((?:,|\bbut|\band|\bso)[ ]*\n(?:\x1bH)?\x01"|(?:,|\bbut|\band|\bso) \x01")([A-Z][a-z\']*)', _lowfix)]

# bank 25 Umasona discovery lines: 'It seems {horse} has "X" - it has that side.' -> 'It seems {horse} has a "X" side.'
def _side(m):
    w=m.group(2); art=b'an' if w[:1] in b'AEIOU' else b'a'
    return b'It seems '+m.group(1)+b'\x01" has '+art+b' ^04~8~\x01""'+w+b'"^02\x01" side.'
def _seems(m):
    rest=m.group(3)
    rest={b"it's ":b'is ',b'it has ':b'has ',b'it is ':b'is '}[rest]
    return b'It seems '+m.group(1)+b'\x01"\n'+m.group(2)+b'\x01"'+rest
RXF[:0]=[('*', rb'It seems (\x02\x1e\xc8)\x01" has \^04~8~\x01""([^"]*)"\^02\x01"(?: - it has that side| - it has that| is part of its nature)\.', _side),
      ('*', rb'It seems (\x02\x1e\xc8)\x01":? \n(\^04~\d~)\x01"(it\'s |it has |it is )', _seems)]
RX+=[('*', rb'(\b(?:so|but|and))(\x01")(?=[A-Z])', rb'\1 \2')]
RX+=[('*', rb' \(jockey\)', b'')]
RW+=[
 ('25:91', H1+Q+' '+R+Q+' - it ran well there.', H1+Q+' ran well in the '+R+Q+'.'),
 ('25:91', H1+Q+' '+R+Q+' - it narrowly lost there.', H1+Q+' narrowly lost the '+R+Q+'.'),
 ('25:91', Q+"Last week's "+R+Q+' '+H1+Q+' - a harsh result for it', Q+"Last week's "+R+Q+' was a harsh result for '+H1+Q+'.'),
]
RW+=[('19:541', 'like^04~4~'+Q+' "Incon ^04~6~'+Q+'sistent"'+E, 'like ^04~6~'+Q+'"Inconsistent"'+E)]

# ---- batch 2 (tutorial start, Naria, training, museum) ----
SEC='\x02\x02\xc8'; YJ='\x02j\xc8'; NF='\x02\x01\xc9'
RW+=[
 ('15:382', Q+'But to make up for it, in the first year '+SEC+Q+" - I'll work hard to support \n"+BH+Q+'well.', Q+"But to make up for it, I'll work hard to help "+SEC+Q+'\n'+BH+Q+'out in the first year.'),
 ('15:422', Q+'From now on, can I call you \n'+N+Q+'\n'+Q+'- may I call you that?', Q+'From now on, may I call you\n'+N+Q+'?'),
 ('15:422', Q+"Kay, from now on I'm calling you \n"+N+Q+'\n'+Q+', cool?', Q+"Kay, from now on I'm calling you\n"+N+Q+', cool?'),
 ('15:108', 'Once married with a bigger family, they can take racing jobs', "Once you're married and your family grows, they can take racing jobs"),
 ('15:128', "Once more, I'm in your care, ", 'From now on, please take care of me, '),
 ('15:114', Q+'Congratulations, '+NF+Q+' and Madam.', Q+'Congratulations to you both, '+NF+Q+'.'),
 ('15:114', Q+'Congratulations, '+NF+Q+' and Sir.', Q+'Congratulations to you both, '+NF+Q+'.'),
 ('36:693', ', '+N+Q+" - we'll head over together.", ", I'll come over with "+N+Q+'.'),
 ('36:693', ', '+N+Q+" - we'll go together.", ", I'll come with "+N+Q+'.'),
 ('36:694', YJ+Q+' She says, "Please come to the training center."', YJ+Q+' says, "Please come to the training center."'),
 ('36:699', 'Yes, now the owner will do their first job as an owner.', "Yes, now it's time for your first job as an owner."),
 ('36:701', "I've already arranged to have racehorses already in training\n"+Q+'transferred to you.', "I've already arranged to have some racehorses in training\n"+Q+'transferred to you.'),
 ('36:709', NF+Q+'Owner, \x02i\xc9'+Q+', \x02j\xc9'+Q+'.\n\x02;\xc8'+Q+' - I look forward to working with you today.', NF+Q+', \x02i\xc9'+Q+', \x02j\xc9'+Q+'.\n'+Q+"I'm \x02;\xc8"+Q+'. I look forward to working with you.'),
 ('36:710', 'Right away, please tell us about the horses being transferred today.', "Right away, let me tell you about the horses being transferred today."),
 ('36:713', 'jockey choice on our side\x05', 'jockey choice on our side.\x05'),
 ('27:32', "looks like it'll really run\n"+Q+"Next, let's pick a 3yo filly\x05", "looks like it'll really run.\n"+Q+"Next, let's pick a 3yo filly.\x05"),
 ('15:284', ',\n'+BH+Q+'as what\'s known as an "owner-breeder".', ' as what\'s\n'+BH+Q+'known as an "owner-breeder".'),
 ('15:282', "I'm Shirasagi Nanaka\n", "I'm Shirasagi Nanaka.\n"),
 ('15:283', 'a real hard worker\n', 'a real hard worker.\n'),
 ('15:283', "she'll be a reliable secretary\x05", "she'll be a reliable secretary.\x05"),
 ('48:96', "I'm sure you don't know what that means out of nowhere,\n"+Q+'First, please look at this.', "That probably doesn't mean much out of nowhere,\n"+Q+'so first, please look at this.'),
 ('36:80', Q+'Here we are', Q+'Hello'),
 ('36:85', 'Owner '+NF+Q+', along with you - I look forward to working with you.', 'Owner '+NF+Q+' and I look forward to working with you.'),
 ('36:85', 'Owner '+NF+Q+', along with you - nice to meet you!', 'Owner '+NF+Q+' and I are glad to meet you!'),
 ('36:53', 'Owner '+NF+Q+', along with you - nice to meet you!', 'Owner '+NF+Q+' and I are glad to meet you!'),
 ('36:87', 'That racing master detective? - I\'m not very familiar with it...', "A racing master detective? I'm not very familiar with that..."),
 ('36:89', 'That, right now, '+N+Q+' - might want to know most right now.', "That's exactly what "+N+Q+' might want to know most right now.'),
 ('36:111', 'about race tendency, so\n'+BH+Q+'see you next time!', 'about race tendency,\n'+BH+Q+'so see you next time!'),
 ('27:239', 'about data and race choices\n'+BH+Q+'as we move ahead.', 'about data and race choices as we move ahead.'),
 ('24:6', 'These are, passed down among us, '+C8+Q+'special training techniques'+E+Q+'.', 'These are '+C8+Q+'special training techniques'+E+Q+' passed down among trainers.'),
 ('24:14', 'choose from the techniques I just gave you\n'+Q+'Actually '+H1+Q+" - let's try Historic Training on it.", "let's try one of the techniques I just gave you\n"+Q+'on '+H1+Q+'.'),
 ('36:1039', 'you mentioned "it affects relationships too"\n'+Q+'So Historic', 'you mentioned "it affects relationships too."\n'+Q+'So Historic'),
 ('36:1041', 'so actively go for it\x05', 'so go for it.\x05'),
 ('24:264', 'Besides that, instead of training for racehorses, '+C8+Q+'training techniques for foals'+E+Q+' - those exist too.', 'There are also '+C8+Q+'training techniques for foals'+E+Q+', not just for racehorses.'),
 ('*', 'More special training, training them from younger than racehorse age...', 'Special training for horses too young to race...'),
 ('*', "I heard there's someone newly started as an owner, so I came to say hello\x05", "I heard someone new had started as an owner, so I came to say hello.\x05"),
 ('*', 'This is our owner, \x02\x01\xcb'+Q+', \n'+Q+"I'm the secretary, ", 'This is our owner, \x02\x01\xcb'+Q+',\n'+Q+"and I'm the secretary, "),
 ('36:811', 'in terms of a horse\'s condition, '+C8+Q+'Pumped'+E+Q+'.\n'+Q+"spirit is the horse's ", 'in terms of a horse\'s condition, there\'s '+C8+Q+'Pumped'+E+Q+'.\n'+Q+"It's the horse's "),
 ('36:812', 'in races, but\n'+Q+'if Pumped is low', 'in races,\n'+Q+'but if Pumped is low'),
 ('3:118', '\x02E\xc8'+Q+': in that race, '+H1+Q+"'s ", 'In the \x02E\xc8'+Q+', '+H1+Q+"'s "),
 ('*', NF+Q+', hello to you and everyone.', Q+'Hello, '+NF+Q+', everyone.'),
 ('27:172', Q+'I see, so raising trust\n'+H1+Q+' could have a good effect on them.', Q+"I see, so raising "+H1+Q+"'s trust\n"+Q+'could have a good effect.'),
 ('27:172', Q+'I see, so raising trust\n'+H1+Q+' might have a good effect on them.', Q+"I see, so raising "+H1+Q+"'s trust\n"+Q+'might have a good effect.'),
 ('27:172', Q+'I see, so by raising trust\n'+H1+Q+' we may be able to influence them for the better.', Q+"I see, so by raising "+H1+Q+"'s trust\n"+Q+'we may be able to influence it for the better.'),
 ('27:179', "Let's think about how to build good trust with "+H1+Q+" - let's act with building better trust in mind.", "Let's think about how to build good trust with "+H1+Q+'.'),
 ('*', 'I admired the director, so I got to work at the racing museum.', 'I admired the director, so I came to work at the racing museum.'),
 ('*', 'Who she takes after, I wonder, but she can be a bit headstrong...', "I wonder who she gets it from, but she can be a bit headstrong..."),
 ('36:122', BH+Q+'" '+C8+Q+'Formation Prediction'+E+Q+' " - I compile it as that.', BH+Q+'I compile it as a "'+C8+Q+'Formation Prediction'+E+Q+'".'),
 ('*', "That's sudden to ask.", "That's a sudden question."),
 ('29:678', Q+"So I'd love to \x01Cy\x00\x00\x00"+Q+"'s horse too.", Q+"So I'd love to cover \x01Cy\x00\x00\x00"+Q+"'s horse too."),
 ('29:678', Q+"So I'd love to "+H1+Q+' too.', Q+"So I'd love to cover "+H1+Q+' too.'),
 ('29:678', '\n\x01Cy\x00\x00\x00'+Q+' and can write episodes about you', '\n'+Q+'and I can write episodes about \x01Cy\x00\x00\x00'+Q),
 ('29:682', 'Unlike before, alone he seemed surprisingly calm.', 'On his own, he seemed surprisingly calm compared to last time.'),
 ('24:211', 'before, and\n'+H1+Q+" - they invited us to come see how it's doing.", 'before:\n'+Q+'they invited us to come see how '+H1+Q+"'s doing."),
 ('24:211', 'Considering the Historic Training we talked about before,\n'+H1+Q+" - they invited us to come see how it's doing.", 'About the Historic Training we talked about before,\n'+Q+'they invited us to come see how '+H1+Q+"'s doing."),
 ('24:212', "Looks like there's no problem\x05", "Looks like there's no problem.\x05"),
 ('24:128', 'suits some horses and not others'+E+Q+" That's what it means.", 'suits some horses and not others'+E+Q+'.'),
 ('24:143', 'So training a horse likes tends to go well?', 'So training a horse enjoys tends to go well?'),
 ('24:146', '\n'+H1+Q+' - I want to think it through carefully when giving it orders.', '\n'+Q+'I want to think it through carefully when giving '+H1+Q+' orders.'),
 ('24:146', '\n'+H1+Q+' - I want to think it through when giving it orders', '\n'+Q+'I want to think it through when giving '+H1+Q+' orders'),
 ('24:148', H1+Q+"'s racing career -\n"+Q+"let's build up training step by step.", Q+"For "+H1+Q+"'s racing career,\n"+Q+"let's build up training step by step."),
 ('36:1043', 'is tied to the '+C8+' being prepared now.'+Q+' even more special training'+E+Q+" - it's related.", 'is tied to '+C8+Q+'even more special training'+E+Q+" that's being prepared now."),
]
RW+=[('*','2 to 5 katakana characters can be entered','2 to 5 letters can be entered'),
     ('*','2 to 5 katakana characters\x05','2 to 5 letters\x05')]
RW+=[('10:563', Q+'Excuse me, you there,\n'+NF+Q+"'s \x02\x08\xc8"+Q+' - I want to get there,\n'+Q+'do you know which way to go?', Q+'Excuse me, could you tell me the way\n'+Q+'to '+NF+Q+"'s \x02\x08\xc8"+Q+'?'),
     ('10:564', '\x02\x08\xc8'+Q+" - it's right here, though...", Q+"This is \x02\x08\xc8"+Q+', actually...')]
RW+=[('31:351','\n'+N+Q+" shouldn't catch a cold either\n"+BH+Q+"Let's keep warm when we sleep at night", '\n'+Q+"Don't catch a cold, "+N+Q+"!\n"+Q+"Let's keep warm at night.")]
RW+=[('*',"The nominees for the Dubai WC, which decides the world's best dirt horse of the first half, have been decided.","The nominees for the Dubai World Cup, the race for the world's best dirt horse, have been announced."),
     ('*',"The nominees for the Dubai WC, which decides the world's best dirt horse of the first half, are out.","The nominees for the Dubai World Cup, the race for the world's best dirt horse, are out.")]
RW+=[('27:476','", as an "owner-breeder" who breeds and owns horses on your own farm,','", as an "owner-breeder" with your own farm,')]
RW+=[('27:506',Q+"I'm just a humble grad student who loves zoology, named \x02A\xca"+Q+'.',Q+"I'm \x02A\xca"+Q+', just a humble grad student who loves zoology.')]
RW+=[('6:372',Q+' It won in good style.'+Q+' At this rate, \x02E\xc8'+Q+' - it looks like it could run a good race there too.',Q+' It won in good style.\n'+Q+'At this rate, it could run a good race in the \x02E\xc8'+Q+' too.')]
# line-start var glued to a new sentence: "{horse} I'm looking forward..." -> "{horse}: I'm ...", "{name}, let's ..."
def _topic(m):
    v=m.group(2); voc=v[1:2] in (b'\x01',b'\x02',b'i',b'j')
    return m.group(1)+v+(b'\x01", ' if voc else b'\x01": ')+m.group(3)
RXF+=[('*', rb'((?:^|\n|\x05)(?:\x1bH)?)(\x02[^\x01\x02\x05\n][\xc8-\xcb])\x01" (I\'m|I |I\'d|I\'ll|I\'ve|Let\'s|We |You )', _topic)]
RW+=[('43:43', Q+'About broodmare Vigor, \x02\x08\xc8'+Q+' could you share the data from\n'+C8+Q+'\x02\x08\xc8'+Q+'? Max out the Vigor of a broodmare there 3 times'+E+Q+"- that's the goal.",
      Q+'About broodmare Vigor: could you share the data from\n'+C8+'\x02\x08\xc8'+E+Q+'?\n'+Q+'The goal is to '+C8+Q+'max out the Vigor of a broodmare there 3 times'+E+Q+'.')]
