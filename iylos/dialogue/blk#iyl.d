//-------------------------------------
// Banters--Iylos initiated
//-------------------------------------
BEGIN BLK#IYL

// Imoen 1
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosImoen","GLOBAL",0)
~
THEN BLK#IYL IylosImoen_1
~Imoen, what was it like without a soul?  Did you feel your godhood begin to emerge, or was that later?~ [LK#I240] DO ~SetGlobal("LK#IylosImoen","GLOBAL",1)~
== BIMOEN25 ~No offense, but I'd really rather not talk about it.~
== BLK#IYL  ~These sorts of questions need to be asked when travelling with companions such as yourself and <CHARNAME>, Bhaalspawn.  I need to know whether I should be wary and buy one of those supposed 'anti-Bhaalspawn' trinkets the markets in Amkethran are selling.  Not that you would *want* to lose control and stab me to death, of course, but it could happen.~
== BIMOEN25 ~Geez, Iylos, where'd you get that stuff?  I'm not going to go on some evil rampage.  It's hard, sure, but you're not exactly making it any easier!~
== BLK#IYL  ~I do apologise, Imoen.  I'll leave you to your thoughts.~
EXIT

// Imoen 2
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosImoen","GLOBAL",1)
~
THEN BLK#IYL IylosImoen_2
~There is a way to stop Bhaal's onslaught, Imoen.  You don't need to be driven by it; you don't need to be party to the constant fight between moralities in your head.  I can help you.~ [LK#I241] DO ~SetGlobal("LK#IylosImoen","GLOBAL",2)~
== BIMOEN25 ~Sure thing.  Right after I go get my latest fashion tips from that ogre we met a couple of weeks back.  He had the neatest loincloths.~
== BLK#IYL  ~At least give it some thought.  There are certain meditative techniques which Balthazar created that should help you.  I can show you them.~
== BIMOEN25 ~I...I'll think about it.~
== BLK#IYL  ~I'm trying to help you, Imoen.~
== BIMOEN25 ~I doubt that very much.  I don't want your "help"!~
== BLK#IYL  ~What you are feeling is paranoia, Imoen.  Take a look at your soul, speak with it.  Then come back and we shall see what you want.~
EXIT

// Imoen 3
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosImoen","GLOBAL",2)
~
THEN BLK#IYL IylosImoen_3
~First, take a deep breath.  Visualise the desert, and the sky--an endless expanse of sand and air, blue and yellow.~ [LK#I242] DO ~SetGlobal("LK#IylosImoen","GLOBAL",3)~
== BIMOEN25 ~I don't think its working.  I keep thinking of ...heh.~
== BLK#IYL  ~Bhaal?  The carnage around us?~
== BIMOEN25 ~You without your robe on.~
== BLK#IYL  ~...~
== BIMOEN25 ~Just kiddin'!  Serves you right.~ = ~...You can talk now, Iylos.~
== BLK#IYL  ~(grumble)~
== BIMOEN25 ~Aww, come back!  I'll be serious this time!~
EXIT

// Aerie 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAerie","GLOBAL",1)
~
THEN BLK#IYL IylosAerie_2
~Aerie, I apologise for my earlier behaviour.  You just struck a nerve; I didn't mean to act like I did.~ [LK#I251] DO ~SetGlobal("LK#IylosAerie","GLOBAL",2)~
== BAERIE25 ~Oh, that's okay.  I understand.~
== BLK#IYL  ~You do?~
== BAERIE25 ~Well, maybe not your specific situation.  But I do understand what it is like to be misunderstood, and to have a problem which no-one recognises and ignores.~
== BLK#IYL  ~Fair enough.  I feel I have to explain why I reacted like I did, though.  Anger is my enemy; a foe I've fought since childhood.  I occasionally have trouble controlling it.  It gets the better of me, even with my years of monastic training.~
== BAERIE25 ~I'm sorry, Iylos, I didn't mean to pry.  That can't have made it any easier!~
== BLK#IYL  ~It isn't your fault--it is mine.~
== BAERIE25 ~All right, if you're sure.  But if you'd like, I could try to help you be calmer when you feel angry.~
== BLK#IYL  ~That would be very kind of you, Aerie.~
EXIT

// Minsc 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMinsc","GLOBAL",1)
~
THEN BLK#IYL IylosMinsc_2
~Minsc, is it true you've met Elminster?~ [LK#I177] DO ~SetGlobal ("LK#IylosMinsc","GLOBAL",2)~
== BMINSC25 ~Ah, yes!  He was the wizard with the pointy hat who sold Boo to Minsc, wasn't he?~
== BLK#IYL  ~Ah...yes?~
== BMINSC25 ~He spoke very strangely...many long, unnecessary words to say very little, according to Boo.  But I do not think Boo himself can say that about others--he himself speaks with such words!~
== BLK#IYL  ~Sounds like an old man I used to know, out in the desert.  He was old--very wrinkly, and I was never sure what race he was.  I *think* he was a half-elf, but I could be wrong.  He often used to speak about nothing, for days on end...~
== BMINSC25 ~Just nothing?~
== BLK#IYL  ~Yes.  Well, the concept of nothingness, more often than not.  But yes, nothing.~
== BMINSC25 ~Boo says that you should stop teasing Minsc, for if you continue to do so he will bite your left thumb and leave you unable to fight!~
== BLK#IYL  ~Ah...~
== BMINSC25 ~But do not worry, friend Iylos, for Minsc will prevent Boo from doing so!  Minsc does not think Iylos would do such a thing, would you?~
== BLK#IYL  ~Of course not, friend Minsc--I would do no such thing.~
== BMINSC25 ~Good!  Let us continue our hunt for evil.  Boo, ready your claws, for I feel battle shall be upon us soon!~
EXIT

// Jaheira 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jaheira")
Range("Jaheira",30)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosJaheira2","GLOBAL",0)
~
THEN BLK#IYL IylosJaheira_2
~Jaheira, why do you follow <CHARNAME>?  Surely there is enough danger in your life without the added risk of travelling with a now-infamous Godspawn?~ [LK#I169] DO ~SetGlobal("LK#IylosJaheira2","GLOBAL",1)~
== BJAHEI25 ~Because, Iylos, I believe that <CHARNAME> is doing the right thing.  Truly, <PRO_HESHE> is preventing a war from spreading even further than the Sword Coast, and preventing many millions of deaths.  I cannot understand myself that you distrust <PRO_HIMHER> so, after all the good <PRO_HESHE> has done.~
== BLK#IYL  ~Are you so sure that <PRO_HISHER> blood will not strike later, when it has a better chance of winning over <CHARNAME> <PRO_HIMHER>self?~
== BJAHEI25 ~I trust <CHARNAME>.~
== BLK#IYL  ~And I trust my instincts.~
== BJAHEI25 ~Perhaps you should re-evaluate your so-called 'instincts' then, Iylos.  <CHARNAME> is no threat to anyone, and I trust <PRO_HIMHER> with my life daily.  You would do well to do the same.~
EXIT

// Haer'Dalis 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosHaerDalis","GLOBAL",1)
~
THEN BLK#IYL IylosHaerDalis_2
~Haer'Dalis, is it true you were part of an acting troupe?  I can just see you, dramatic costume afire, your hand upon your breast proclaiming some dramatic sentiment.~ [LK#I199] DO ~SetGlobal("LK#IylosHaerDalis","GLOBAL",2)~
== BHAERD25 ~Indeed, I was part of a grand troupe before I joined <CHARNAME>.  We performed all sorts of fanciful shows during our time together!  I would miss it, were this play of our Raven's not so similar to what I would perform with my old troupe.~
== BLK#IYL  ~I see.  How far through the planes did you travel?~
== BHAERD25 ~We travelled mostly through Sigil, though due to some unfortunate and unforeseen complications, we were forced out of our home.  The Prime was the first place we travelled to, in hopes of seeking out aid from an old friend of our troupe leaders.~
== BLK#IYL  ~So who is this Raelis Shai I have heard you speak of with such fondness?  Another actor, a love, or a toy which you briefly played with before throwing away, and regret?~
== BHAERD25 ~Raelis was none other than the aforementioned troupe leader!  As clichéd as it may seem for the troupe leader and the leading man to form such a bond, I would indeed go as far as to declare her as being my former lover.~
== BLK#IYL  ~I thought as much--I would expect no less from such as you.~
== BHAERD25 ~You wound me!  Have I struck a nerve, my Hawk?~
== BLK#IYL  ~I have seen much the same happen before, Doomguard.  You discard those you no longer need, and move on to the next, enjoying the thrill of the chase.~
== BHAERD25 ~While I do indeed enjoy such thrills, I assure you that was not the case with my dear Raelis.  Our parting left a scar that no chase I may give will ever heal.~ = ~Perhaps it would be wise of you to think before issuing such judgments on another, Iylos.  Then others will not be so sorely tempted to wound your pride due to the careless words you have spoken, methinks.~
EXIT

// Mazzy 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Mazzy")
Range("Mazzy",30)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMazzy","GLOBAL",1)
~
THEN BLK#IYL IylosMazzy_2
~Mazzy, can you tell me about <CHARNAME>?~ [LK#I175] DO ~SetGlobal("LK#IylosMazzy","GLOBAL",2)~
== BMAZZY25 ~What do you wish to know, friend Iylos?~
== BLK#IYL  ~Has <CHARNAME> ever--~
== BMAZZY25 ~Before you continue--if you wish to hear naught but bad things about <CHARNAME>, Iylos, then do not ask me.  I have nothing but respect for <PRO_HIMHER>, and will not tarnish <PRO_HISHER> name.~
== BLK#IYL  ~That as it may be, Mazzy, I still ask--has <CHARNAME> ever travelled to Beregost?~
== BMAZZY25 ~I do believe so.  Why do you ask?~
== BLK#IYL  ~Beregost is where I was born.~
== BMAZZY25 ~But I thought you were raised in Amkethran...?~
== BLK#IYL  ~I was.  But I was not born there--I was placed on the doorstep of the Monastery when I was but a babe.  I never knew Beregost, nor its inhabitants.~
== BMAZZY25 ~Ah.  I truly am sorry, Iylos.  I did not know you were an orphan; it must have been hard growing up in such a stern place.  My own childhood was filled with laughter and joy.  My heart goes out to you.~
== BLK#IYL  ~I appreciate the sentiment, Mazzy, but this is not something I usually disclose to strangers.  I would appreciate it if you did not mention our conversation to <CHARNAME>, I--~ = ~Perhaps I should not have brought it up at all.  I'm sorry to have disturbed you, Mazzy.~
EXIT

// Cernd 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
Range("Cernd",30)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosCernd","GLOBAL",1)
~
THEN BLK#IYL IylosCernd_2
~Nature is a fickle thing, always bent to its own incomprehensible purpose.  Man means nothing to it, in the end: it simply continues living, growing, dying...~ [LK#I185] DO ~SetGlobal("LK#IylosCernd","GLOBAL",2)~
== BLK#IYL  ~Is there a point to it, or is it just a ceaseless cycle with no purpose?~ [LK#I186]
== BCERND25 ~Nature exists.  Surely that is enough?~
== BLK#IYL  ~Not for me.  It must have a purpose of some kind, some unfathomable goal to achieve, otherwise it would not exist.  Everything has order, and without purpose Nature surely would not exist.~
== BCERND25 ~Nature need not have a purpose.  It exists, it lives, it thrives, in its unceasing cycle, much like a tree; it begins as a seed, grows tall and strong, and eventually dies under the onslaught of the elements, leaving behind the seeds and means for the next generation to grow.~
== BLK#IYL  ~It is your own unceasing circles which weary me, Cernd.  I will think on this, but I believe I am right.  Nature must have a purpose, or it would not exist.~
== BCERND25 ~That is for you to choose.  Whatever your eventual choice, however, Nature will continue to exist far beyond the day you die.~
EXIT

// CN Anomen 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
Global("AnomenIsNotKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAnomenNeutral","GLOBAL",0)
~
THEN BLK#IYL IylosAnomenNeutral_1
~Anomen Delryn, correct?~ [LK#I200] DO ~SetGlobal("LK#IylosAnomenNeutral","GLOBAL",1)~
== BANOME25 ~Nay, simply Anomen.  It is in your best interest to refrain from using that surname in my presence.~
== BLK#IYL  ~Why so?~
== BANOME25 ~I have left the Delryn family in Amn.  I no longer wish to be a part of that particular shipwreck.  Besides, I would never give my father the privilege of calling me "son".~
== BLK#IYL  ~I see.  What is it that caused such a breach between you and Cor Delryn?  I have heard the rumours which flood the sword coast, but I believe none of them.~
== BANOME25 ~How is it you know my father's name, monk?~
== BLK#IYL  ~There are those who have carefully followed <CHARNAME>'s life, and the histories of those <PRO_HESHE> travels with.  It is common knowledge if you know where to look.~
== BANOME25 ~'Common knowledge'?  Do not insult my intelligence.  You are obviously hiding something, monk; do not think for a moment that you have me fooled.~
EXIT

// Nalia 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Nalia")
Range("Nalia",30)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosNalia","GLOBAL",0)
~
THEN BLK#IYL IylosNalia_1
~Nalia, are you really an adventurer?  You look a bit...well, young, to be completely candid.~ [LK#I179] DO ~SetGlobal("LK#IylosNalia","GLOBAL",1)~
== BNALIA25 ~I have as much experience as <CHARNAME> or Imoen.  I have travelled far since leaving my home, and I believe I have become stronger than the naïve young girl I used to be.~
== BLK#IYL  ~I think I'll have to take your word on it.  Where exactly have you travelled?~
== BNALIA25 ~Many places, Iylos, that you would likely be unable to imagine if all *you've* seen is this barren place.~
== BLK#IYL  ~The desert is my home, girl.  Amkethran is far too busy...far too aloof, dependent on other nations to support it.  In the desert, you have to be self-sufficient.  If you want something, you make it yourself, or you are forced to trade something valuable to get it.  It is tough...but I prefer that life over any other.~
== BNALIA25 ~Brief as my experience may have been, I don't like it in the least.  One day I could not even see, the storms of sand were so fierce, and I saw these giant scorpion creatures.  I avoided them, of course, but they were still unsettling.~
== BLK#IYL  ~Ah...then you must have encountered the Formian, or perhaps the Stingers.  Either are very dangerous...if you ever visit the deserts in future, you may want to stick to the small villages instead of wandering the deserts themselves.  It is a very harsh environment for a lady.~
== BNALIA25 ~I can handle myself, thank you Iylos.  No need to worry yourself, I have more than it looks at my command.~
EXIT

// Keldorn 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosKeldorn","GLOBAL",1)
~
THEN BLK#IYL IylosKeldorn_2
~I have been thinking on what you said, Keldorn...and I realised something.~ [LK#I182] DO ~SetGlobal("LK#IylosKeldorn","GLOBAL",2)~
== BLK#IYL  ~I've seen that those with ill-intent and power can corrupt the law to their own purpose, rather than following its true purpose--which is justice.~ = ~Sometimes even the law itself is flawed; but more often than not it is the interpretation of the law which can bend it to nefarious purposes.  It depends on the interpreter.  Law in and of itself is neutral, and attempts to bring a fair solution to any problem.~
== BKELDO25 ~In the Order, we always try to bring justice to each and every situation.  Occasionally, this means we do have to circumnavigate or outrightly ignore the law set in place by the government, but it is for the best.  Other times, we have a hard time agreeing with the law but must follow it to the letter, as procedure strictly dictates.~
== BLK#IYL  ~Justice is objective.~
== BKELDO25 ~Yes, it is.  Sometimes, though, we have to just do something and hope we did it right.  We're only human.~
== BLK#IYL  ~I see your point.  Perhaps it would be best if we had no emotion, no bias; nothing which would constrain us from the ultimate truth.~
== BKELDO25 ~Perhaps...but without emotion, we would not know whether what we are doing is just, or good.~
== BLK#IYL  ~Perhaps.~
EXIT

// Korgan 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Korgan")
Range("Korgan",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosKorgan","GLOBAL",0)
~
THEN BLK#IYL IylosKorgan_1
~Korgan, I admire your skill in battle.  You may have absolutely no manners whatsoever and you can't speak a proper language, but when it comes to battle...you know what you're doing.~ [LK#I170] DO ~SetGlobal("LK#IylosKorgan","GLOBAL",1)~
== BKORGA25 ~Aye, laddie, that I do.  Ye be no coward yeself, and with a little training, some armor and a proper weapon ye might even be able ta match up ta me!  Har har.~
== BLK#IYL  ~Korgan, bravado will get you nothing but a sore backside.~
== BKORGA25 ~HA!  Exactly the same ta yeself, nancy boy.  If ye dunnae use a proper weapon, ye will lose any encounter ye set yer mind to!~
== BLK#IYL  ~A fist *is* a proper weapon, Korgan, as much as you may think that a weapon must consist of a bladed edge.  A fist can do just as much dam-~
== BKORGA25 ~The damage is for nought if ye dunnae spill some blood, lad!  Surely ye can understand me reasonin' there?  ~ = ~Bah, ye have no taste.  Go and hide under <CHARNAME>'s arm, cowerin' an' whimperin' like an abandoned puppy, while I do the work tha' needs doin'.  Humans--cowards, the lot of 'em!~
EXIT

// Cernd 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
Range("Cernd",30)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosCernd","GLOBAL",0)
~
THEN BLK#IYL IylosCernd_1
~I heard about what you did with your son, Cernd.~ [LK#I183] DO ~SetGlobal("LK#IylosCernd","GLOBAL",1)~
== BCERND25 ~I-~
== BLK#IYL  ~Before you continue, I want you to know that I believe you did the right thing.  I'm not sure I would have had the courage to do what you did, and leave my own flesh and blood with people I barely knew, but then again, I would have no qualms if I left a child in the Monastery.  I suppose it is much the same situation.~ [LK#I184]
== BCERND25 ~I appreciate your support of my decision, Iylos.  It was a decision I struggled much with; I was of fractured mind, and unsure.  My final choice, I feel, was the right one.  I can only hope that like a strange cub brought into a kindly mother bear's den, he will be cared for well.~
== BLK#IYL  ~Incidentally...I was never told his name.  What is he called?~
== BCERND25 ~He is called Ahsdale.  He is my son...and I have done the best I can for him.  If you will excuse me, I need some time...some time to think, perhaps.~
EXIT

// Edwin 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Edwin")
Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosEdwin","GLOBAL",0)
~
THEN BLK#IYL IylosEdwin_1
~A Red Mage of Thay.  Wonderful--but I suppose I shouldn't be surprised.  Why are you travelling with <CHARNAME>, Mage?~ [LK#I194] DO ~SetGlobal("LK#IylosEdwin","GLOBAL",2)~
== BEDWIN25 ~I have a name.  Use it or suffer the consequence of the rage of a Thayvian hero.  (Pathetic simian, surely he would have heard of Edwin Odesseiron, mage extraordinaire?  Bah.)~
== BLK#IYL  ~I'm afraid I don't know your name, Dread Mage.  You shall have to inform me--a Thayvian hero, you say?~
== BEDWIN25 ~Indeed.  You must be living under a rock not to have heard of the great Edwin Odesseiron, the most powerful Thayvian mage under the sun?  (He is practically *asking* for a fireball!  No...surely a fireball does not deserve to be the end of such a quivering lump of ignorant flesh!)~
== BLK#IYL  ~No, I have to admit I have not heard of you.  And I would surely remember such an...enigmatic man.~
== BEDWIN25 ~Yes, yes.  Now, leave me--I have important work to be doing, and you are wasting my time!  (At least he has one thing right...somebody should feed this monkey a banana or something.)~
EXIT

// Sir Anomen 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
Global("AnomenIsKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAnomen","GLOBAL",0)
~
THEN BLK#IYL IylosAnomen_1
~Anomen Delryn, am I correct?~ [LK#I196] DO ~SetGlobal("LK#IylosAnomen","GLOBAL",1)~
== BANOME25 ~You may address me as Sir Anomen, yes.~
== BLK#IYL  ~I see.  So how is it that you became a Knight, rather than a Paladin, sir Anomen?  Is it because you were not able to, due to the company you took, perhaps?~
== BANOME25 ~That is not how it happened.  I was already a Squire--in training for my Knighthood--when I met <CHARNAME> in Athkatla.~
== BLK#IYL  ~You did not answer my question, 'Sir' Anomen.~
== BANOME25 ~And I do not see how it is any business of yours, Monk, but I shall be civil.  I was unable to get the sponsorship necessary to join the Order as a Paladin, and so my mother asked the Priests of Helm to take me in and train me as a warrior/cleric.  It was from there that I was squired in the Order.~ = ~Now if that answers your questions enough, I shall be glad to end this conversation.~
== BLK#IYL ~Thank you for your honesty, Sir Anomen.  Perhaps you are not so bad as I had thought...something to contemplate, regardless.~
EXIT

// Jan 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jan")
Range("Jan",30)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosJan","GLOBAL",0)
~
THEN BLK#IYL IylosJan_1
~Jan Jansen...they say that wherever there is a city or famous group, there is a Jansen somewhere close by.  Unbelievable.~ [LK#I172] DO ~SetGlobal("LK#IylosJan","GLOBAL",1)~
== BJAN25  ~Unbelievable, perhaps, but definitely true!  Last head count, there was a Jansen clan in almost every major city in Faerun, and that's just counting heads.  Why, with a feet count we're more populous than bad eggs in a zombie chicken farm, and that's not even counting *our* bad eggs.~
== BLK#IYL ~I was being sarcastic.~
== BJAN25  ~Perhaps you were, but--as they say--the carrot never grows too far from the flatulent Wood Elves, and you really don't want to run into any of them.  We Jansens have been quite successful in our days, and we have managed to spread out everywhere!  It feels good to know that no matter where you are, there's always a pot of the Jansen clan's lovely pumpkin soup being aged in Cousin Gormflath's old shower hats somewhere near.  Where are we now, by the way?  I can almost smell it...~
EXIT

// Haer'Dalis 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosHaerDalis","GLOBAL",0)
~
THEN BLK#IYL IylosHaerDalis_1
~Doomguard, what brings you to this plane of existence?  Your type are more suited to the climes of Sigil than the Prime, I would have thought.~ [LK#I198] DO ~SetGlobal("LK#IylosHaerDalis","GLOBAL",1)~
== BHAERD25 ~Nothing in particular, my Hawk; my strand was drawn to this particular plane by the chaos sown from the presence of the Bhaalspawn.  <PRO_HESHE> is truly a most interesting phenomenon.  Prithee, I have a question of mine own; How is it that a monk, isolated from the world, knows of the Doomguards?~
== BLK#IYL  ~I am not as isolated as you might have thought, Haer'Dalis.  So <CHARNAME> is of interest to you?~
== BHAERD25 ~Why, of course!  At the mere mention of our dear Raven's name, all of Toril goes into disarray--the bedlam we cause each and every day of our epic journey is enough to make this Sparrow want to cry out in joy.  Surely you agree that the life we lead following <CHARNAME> is one to be thankful for?~
== BLK#IYL  ~What is there to be gained in chaos, Haer'Dalis, but disarray and unbalance?  There is already enough unrest on the Material plane, it does not need the Bhaalspawn thrown into the mix to further incite war and hatred.~
== BHAERD25 ~"What is there to be gained from chaos"?  Chaos is what moves and shapes the planes, my Hawk!  Without chaos, the world is stagnant.  Do you really feel the world would be best left the way it is until the gods see fit to end it all?  Do you really feel we should go about our lives, performing the same mundane tasks until we breathe our last breath?~
== BLK#IYL  ~No, but there are other ways to achieve change, songbird, are there not?~
== BHAERD25 ~True, but none so satisfying, methinks.~
EXIT

//-------------------------------------
// Banters--Other NPC initiated
//-------------------------------------

// Aerie 1
CHAIN IF
WEIGHT #2
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAerie","GLOBAL",0)
~
THEN BAERIE25 IylosAerie_1
~May I ask something of you, Iylos?~ [LK#IBLN] DO ~SetGlobal("LK#IylosAerie","GLOBAL",1)~
== BLK#IYL  ~If you wish, Elf.~ [LK#I250]
== BAERIE25 ~Oh--call me Aerie!~
== BLK#IYL  ~All right.~
== BAERIE25 ~Well, aren't monks supposed to be calm, and ...not so eager to rush into battle?~
== BLK#IYL  ~I-~ = ~...~ = ~Yes.  We are.~
== BAERIE25 ~But-~
== BLK#IYL  ~Please, just...just leave it, Aerie.~
EXIT

// Jaheira 1
CHAIN IF
WEIGHT #4
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
AreaCheck("AR4500")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosJaheira","GLOBAL",0)
~
THEN BJAHEI25 IylosJaheira_1
~Iylos, you have nothing to be afraid of here in the Pocket Plane.  This is <CHARNAME>'s refuge; it is safe here.~ [LK#IBLN] DO ~SetGlobal("LK#IylosJaheira","GLOBAL",1)~
== BLK#IYL  ~I realise that, Jaheira, but-~ [LK#I168]
== BJAHEI25 ~Then why do you coil, ready to spring into action at the slightest sound or movement?  There is nothing here that <CHARNAME> does not will to be here.~
== BLK#IYL  ~And you wonder why I'm afraid, Jaheira.~
== BJAHEI25 ~In Silvanus' name!  You are *still* suspicious of <CHARNAME>'s motives?~
== BLK#IYL  ~I do not trust <PRO_HIMHER>, and I have been given no reason to.  Leave it, Jaheira--you cannot make me trust based on your own observations.  I must make my own.~
EXIT

// Korgan 2
CHAIN IF
WEIGHT #6
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosKorgan","GLOBAL",1)
~
THEN BKORGA25 IylosKorgan_2
~Ach, laddie...ye need to be payin' attention to the road afore us, not ta <CHARNAME>'s backside!  Do ye have nae sense?!  We could be attacked, and ye wouldnae notice, for all the world jus' payin' attention ta the Bhaalspawn.~ [LK#IBLN] DO ~SetGlobal("LK#IylosKorgan","GLOBAL",2)~
== BLK#IYL  ~Didn't I tell you not to talk to me, dwarf?~ [LK#I171]
== BKORGA25 ~Not that I remember, but me memory isnae what it used to be.  Either way, I couldnae care--I could still reave ye in half without a moment's hesitation if I wished.  Jus' keep yer blasted eyes ta the fore, and pay attention to what we be doin'.  I dunnae want to have to save yer sorry arse in battle because ye were too caught up in yer blasted 'task'.~
== BLK#IYL  ~I can handle myself in battle, thank you Korgan.  Kindly leave me to my contemplation.~
== BKORGA25 ~Yer contemplation will get us killed if ye're not careful.~
== BLK#IYL  ~And your insolence will get you killed if *you* aren't careful.  Leave me alone, Korgan.~
== BKORGA25 ~Is it even worth *talkin'* ta him?  *mutters* Nooo, I'm a blasted human with a blasted crush on the blasted Bhaalspawn.~
== BLK#IYL  ~I heard that, Korgan!~
== BKORGA25 ~I'm sure ye did.  Toddle off now, I'm sure <CHARNAME> will pay attention ta ye soon enough.  Har har har.~
== BLK#IYL  ~(grumble)~
EXIT

// Jan 2
CHAIN IF
WEIGHT #5
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosJan","GLOBAL",1)
~
THEN BJAN25 IylosJan_2
~My great-grandfather's cousin's wife was a monk.  Wasn't very good at it, of course--Gnomes are never very good monks, they tend to be far too easily sidetracked and just don't have the concentration...~ [LK#IBLN] DO ~SetGlobal("LK#IylosJan","GLOBAL",2)~
== BJAN25  ~My armor has a dint in it the size of Aunt Maggie's choice melons!  When did that happen?~
== BLK#IYL ~Jan?  Your point?~ [LK#I173]
== BJAN25  ~What point?~
== BLK#IYL ~In your story; you mentioned your great-grandfather's...wife's...you mentioned one of your relatives was a monk.  You brought it up for a reason, did you not?~
== BJAN25  ~Oh, that--no, not really.  Just finding ways to while away the time as we go on this tedious adventure.  Do you think I could talk <CHARNAME> into hiring a couple of entertainers?  I know of this fantastic troupe--the Turnip Twizzlers, they were called--that do these things with toothpicks you wouldn't believe.~
== BLK#IYL ~I see.  Next time, if you're going to speak to me, at least have a point in mind.  I don't appreciate random chatter and I have other things to think about.  Like what to do when annoying Gnomes start telling me stories I could well do without.~
EXIT

// Mazzy 1
CHAIN IF
WEIGHT #3
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMazzy","GLOBAL",0)
~
THEN BMAZZY25 IylosMazzy_1
~Iylos, you are so dedicated to your cause.  I cannot help but admire your diligence, perseverance and your passion when you speak about the Monastery, the ways of the Monk and how you hope to one day fulfill your goal of teaching.~ [LK#IBLN] DO ~SetGlobal("LK#IylosMazzy","GLOBAL",1)~
== BLK#IYL  ~Thank you, Mazzy, but I don't recall mentioning that I wanted to teach.~ [LK#I174]
== BMAZZY25 ~It is not a hard thing to pick up on if you know what you're looking for, Iylos.~
== BLK#IYL  ~I...I see.  Well, ah, thank you, Mazzy--I appreciate it.~
EXIT

// Minsc 1
CHAIN IF
WEIGHT #5
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
AreaType(FOREST)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMinsc","GLOBAL",0)
~
THEN BMINSC25 IylosMinsc_1
~Nature is a wonderful thing, Iylos.  Boo wants to know why you shy back from it so!~ [LK#IBLN] DO ~SetGlobal("LK#IylosMinsc","GLOBAL",1)~
== BLK#IYL  ~I do not *shy* from nature, I-~ [LK#I176]
== BMINSC25 ~Ah, but you do!  Minsc has noticed it as well...when you walk, you are always ready to battle!  Though you are like that much of the time.~ = ~I understand now!  Iylos thinks that nature is evil, and that he must constantly be wary of its wily, boot-evading tricks!~
== BLK#IYL  ~...No, not really.  I try to be constantly prepared for battle, regardless of where we are.  Being in the woodland makes me ever so slightly nervous.  There are more places in which an enemy can hide and ambush us from.~
== BMINSC25 ~Do not worry, Iylos!  Minsc and Boo will keep their ears to the ground and tell you if any evil is near, so that you do not need to be so worried.~
== BLK#IYL  ~...I appreciate the thought, but that isn't really necessary, Minsc.  I can take care of myself.~
== BMINSC25 ~Minsc will watch for evil just in case, then; you never know when you might be surprised.~
EXIT

// Minsc 3
CHAIN IF
WEIGHT #7
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMinsc","GLOBAL",2)
~
THEN BMINSC25 IylosMinsc_3
~Iylos, Boo is curious; Minsc has heard you speak of your travels in the desert, and over the land.  Are you on your Dajemma?~ [LK#IBLN] DO ~SetGlobal("LK#IylosMinsc","GLOBAL",3)~
== BLK#IYL  ~Dajemma?~ [LK#I178]
== BMINSC25 ~You were right, Boo, he is not from Rasheman like Minsc and Dynaheir, so he does not know of his Dajemma!~
== BLK#IYL  ~Ah...Dynaheir?  I seem to recall the name, but I do not think I've ever met her.~
== BMINSC25 ~She died by the hands of the evil Irenicus--but we got our revenge, right Boo?  Dynaheir lives on through us, and with each footstep forward on the path of goodness and righteousness we honour her.~
== BLK#IYL  ~I'm sorry, Minsc.~
== BMINSC25 ~I still remember from before Irenicus, when we rescued Dynaheir from the monsters who had captured her!  That was a joyous day; even Boo wept with happiness!~
== BLK#IYL  ~I would have liked to have met her, I think.  She must have been a very kind woman.~
== BMINSC25 ~That she was, friend Iylos!~
EXIT


// Keldorn 1
CHAIN IF
WEIGHT #2
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosKeldorn","GLOBAL",0)
~
THEN BKELDO25 IylosKeldorn_1
~Tell me, what is the monk perspective on law?  I have heard it is somewhat unique in the world, and would be interested to find out more.~ [LK#IBLN] DO ~SetGlobal("LK#IylosKeldorn","GLOBAL",1)~
== BLK#IYL  ~I have heard such, but I do not think it true.  Though most monks do view the world from a slightly different perspective.~ [LK#I181]
== BKELDO25 ~What is *your* perspective, Iylos?~
== BLK#IYL  ~I believe Law is rather hard to define.  It depends on where you're coming from--I personally believe law is something to live up to; an ideal that we can follow to bring balance and order to the world.  To bring justice.~
== BKELDO25 ~That's a very black and white view of the world, and perhaps even a little naïve--but you are young yet.  Law is not always perfect.  It is not always black and white; there are always grays, those ambiguous situations where none can be sure where balance lies.~
== BLK#IYL  ~Perhaps in your opinion.  Law is not without its flaws, I admit, but it is law.  It isn't meant to be always right; justice isn't always 'Good' or 'Evil'.~
== BKELDO25 ~If you think about it, Iylos, you may understand where I'm coming from.  For now...let us continue our journey.~
EXIT

// Valygar 1
CHAIN IF
WEIGHT #5
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosValygar","GLOBAL",0)
~
THEN BVALYG25 IylosValygar_1
~What ails you, Iylos?  Why so melancholy?~ [LK#IBLN] DO ~SetGlobal("LK#IylosValygar","GLOBAL",1)~
== BLK#IYL  ~I'm not usually one to dwell on such things, but I'm feeling somewhat...dark.~ [LK#I187]
== BVALYG25 ~Anything you'd like to talk about?  I've found talking things over with another can sometimes ease one's pain.~
== BLK#IYL  ~As I said, I am not usually one to give myself over to such emotions.  I'm wondering what it would be like to have a family...a mother, a father, perhaps even a sister or a brother.~ = ~It is a difficult concept to contemplate, as I have never had family other than the Monks at the Monastery, who weren't exactly parental figures.~
== BVALYG25 ~Be careful what you wish for, Iylos; family can bring both joy and woe.  The ties that bind also cut the deepest.~
== BLK#IYL  ~I will keep that in mind, Valygar.~
EXIT

// Sarevok 1
CHAIN IF
WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("MetBal","GLOBAL",1)
Global("LK#IylosSarevok","GLOBAL",0)
~
THEN BSAREV25 IylosSarevok_1
~Why follow order so blindly, Iylos?  If you wish to be so blindly obedient, perhaps we could arrange to have you transformed into a puppy.~ [LK#IBLN] DO ~SetGlobal("LK#IylosSarevok","GLOBAL",1)~
== BSAREV25 ~I think it would suit you--a pathetic wretch, fawning over that foolish Balthazar...hah, that is something which would be worth seeing!~
== BLK#IYL  ~Hah, hah, hah.  Your sense of humour really is as deplorable as your taste in armor, Sarevok.  Perhaps a little more black here and there instead of such blinding gold would do your ego good.~ [LK#I188]
== BLK#IYL  ~Or perhaps it needs tending, which is why <CHARNAME> holds you so tenderly to <PRO_HISHER> chest.  I have wondered what <PRO_HESHE> sees in you...perhaps I have found the answer.~
== BSAREV25 ~I would hold your tongue, Monk, lest I do it myself.~ = ~And I can *promise* that I will not be as gentle as I am now!~
EXIT

// Sarevok 2
CHAIN IF
WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosSarevok","GLOBAL",1)
~
THEN BSAREV25 IylosSarevok_2
~Iylos, what is that you carry around your neck?  Some trinket to dull the pain of having to leave your darling Balthazar?  Hahahaha...~ [LK#IBLN] DO ~SetGlobal("LK#IylosSarevok","GLOBAL",2)~
== BLK#IYL ~(sob) Yes...~ [LK#I189]
== BSAREV25 ~HAH!  So the pitiful excuse for a man admits it...~
== BLK#IYL  ~You are a fool, Sarevok.  Truly a fool.~ [LK#I190]
== BSAREV25 ~What?!  But I-~ = ~I will kill you, slowly, and painfully.  I will wring your neck, slowly twisting until the blood boils from your veins!~
== BLK#IYL  ~I think not.  Look around you...would you really want to test <CHARNAME>'s trust in you by killing me?~ = ~Leave me be, and find your pathetic amusement elsewhere.~
EXIT

// Viconia 1
CHAIN IF
WEIGHT #3
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosViconia","GLOBAL",0)
~
THEN BVICON25 IylosViconia_1
~Do you not speak, monk?  Is it that a cat has caught your tongue, and plays it with her claws?~ [LK#IBLN] DO ~SetGlobal("LK#IylosViconia","GLOBAL",1)~
== BLK#IYL  ~You are against everything I stand for, Drow.  Do not speak to me unless it is to ask for the water, or for aid in battle.~ [LK#I191]  = ~And even then, I'm not sure I would comply.  Stay away from me if you know what's good for you, Viconia.  I am sure your precious <CHARNAME> would not approve of us fighting, so why pre-empt <PRO_HIMHER>?~
== BVICON25 ~As you wish, rivvil...know that a Drow enemy is not an enemy even I would wish upon many people.~
== BLK#IYL  ~I think I'm willing to risk it.~
== BVICON25 ~Oh, how *much* you do know of me, rivvil...~
EXIT

// Viconia 2
CHAIN IF
WEIGHT #4
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosViconia","GLOBAL",1)
~
THEN BVICON25 IylosViconia_2
~So, Monk...you are a servant of Balthazar?  Perhaps it would be beneficial if you were to indulge us; who exactly is this Balthazar, rivvil, and what does he want with us?~ [LK#IBLN] DO ~SetGlobal("LK#IylosViconia","GLOBAL",2)~
== BLK#IYL  ~Spout not your foul language, Drow; it is a wonder I have not pierced your vile heart already.~ [LK#I192]
== BVICON25 ~(Laugh) With what, Monk?  Will you sharpen your stick and poke it at me, hoping it will pierce my ebony flesh?  I think not.  Answer my question lest I lose patience with you.~
== BLK#IYL  ~It is not your place to be concerned, filth.~
== BVICON25 ~I travel with <CHARNAME> as well as you, Iylos Mirdan.  I have a right to know of anything which involves my person; tell me or suffer the consequences, waeles.~
== BLK#IYL  ~Viconia.  Turn around, and walk away from me.  I will answer none of your damned questions, nor tell you of Balthazar or what he is doing.~
== BVICON25 ~I will leave for now, Iylos.  Kyorl dosst rath...~
== BLK#IYL  ~Don't worry.  I would never leave my back unprotected from the likes of your kind.~
EXIT

// Viconia 3
CHAIN IF
WEIGHT #5
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosViconia","GLOBAL",2)
~
THEN BVICON25 IylosViconia_3
~Ji dos telanth l' xanalress, wael?~ [LK#IBLN] DO ~SetGlobal("LK#IylosViconia","GLOBAL",3)~
== BLK#IYL  ~I speak the language of the foul Drow, yes.  I have met my share of Drow...I know the rudiments.~ [LK#I193]  = ~Cha'kohkev ilythiiri elg'caress!~ = ~There are yet those who live from House De'Vir, bitch...and they are pitiful fools, much like yourself.  It must run in the family.~
== BVICON25 ~ Do not insult me in my native language, wael...surely you know the terrors inflicted upon those who mutilate the language so?~
== BLK#IYL  ~I speak it perfectly well.  You cannot deny it, and yet you still persist?~
== BVICON25 ~How is it that you speak Drow, male?!  And how do you speak with such fluency?~
== BLK#IYL  ~I have secrets, Viconia...just as any other.  Secrets I would prefer to keep to myself.~
== BVICON25 ~Waeles!  Zah'har wun uoi'nota, nuij--satiir l' chathen pholor dosst rath, qwe'en wun dosst illingen, l' chath yacal dosst siltrin...telanth l' xanalress 'sohna, lu' dos orn satiir nindel toha jiv'undus.~
== BLK#IYL  ~It is not I, Viconia, who will suffer in the fiery bowels of hell here.~
EXIT

// Edwin 2
CHAIN IF
WEIGHT #4
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosEdwin","GLOBAL",1)
~
THEN BEDWIN25 IylosEdwin_2
~So.  You, monkey.  Come here.~ [LK#IBLN] DO ~SetGlobal("LK#IylosEdwin","GLOBAL",2)~
== BLK#IYL  ~I..  don't think so.~ [LK#I195]
== BEDWIN25 ~Here!  Now!  (Must I speak to him like the dog he is?  Does he not understand Common?!)~
== BLK#IYL  ~No, Edwin, just no.  Leave me alone.~
== BEDWIN25 ~If he will not do as I say, then I will have to do this all myself.  Bah!~
== BLK#IYL  ~What did you DO TO ME, EDWIN?!~
== BEDWIN25 ~Nothing, just a simple spell to check something.~ = ~Hmm...how peculiar.  You are not possessing any rudiment of magic, and yet I see you channel...something...into your weapon with each strike.  What are you, and what powers do you wield?  (If they are at all useful, I must have them for myself!)~
== BLK#IYL  ~It is Ki, and it is not magical.  It is the physical manifestation of the power of the trained mind.~
== BEDWIN25 ~Interesting.~
== BLK#IYL  ~I'm sure it must be for one such as you.~
== BEDWIN25 ~Of course it is, and the suspicion in your voice is highly unfounded.  (I do not see why it would be any surprise that I am interested in this power.  If I can extract it then no one would be able to stand up to me!)~
== BLK#IYL  ~I'm afraid you will find that my Ki is not 'extractable'--it is the physical manifestation of *my* soul, and *my* mind.  It will not work for anyone else, even if you could somehow steal it from me, so leave me be.~
== BEDWIN25 ~I'm sure you would be doing your fellow monks a favour by ridding the dustbowl of you, Iylos.  Cease your babbling and get back into line like the rest of us, who are not spouting such pathetic drivel.  (Yes...a few well placed fireballs would work perfectly; perhaps a Melf's Acid Arrow as well.  Idiot.)~
EXIT

// Anomen 2
CHAIN IF
WEIGHT #4
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAnomen","GLOBAL",1)
~
THEN BANOME25 IylosAnomen_2
~Monk.  You expressed curiosity over my past, yet you have yet to tell me yours.~ [LK#IBLN] DO ~SetGlobal("LK#IylosAnomen","GLOBAL",2)~
== BLK#IYL  ~Indeed.  My own past is nothing special; I grew up in the monastery of Amkethran, abandoned as a small child at their doorstep.  I trained as a monk, and wanderlust began to assert itself into my life at the age of 17--I began to travel, but soon realised I had the most amazing place to travel in on *my* doorstep: the Anauroch Desert.  It is my home, and where I am at peace.~ [LK#I197]
== BANOME25 ~With your training you could do well for the blighted town, and the inhabitants of this place.  Why do you not?  There is little in the desert.~
== BLK#IYL  ~The Anauroch Desert is a place of mystery...surely you have heard of ancient Netheril, which is now buried beneath the golden sand?  It may not be the most spectacular place for many, but it is my home.  I grew up here.~ = ~The town can well defend itself--it is by no means 'blighted'.  The inhabitants choose to live there; they do not eke out in some pathetic existence in some enormous ducal-city, but purposefully augment their own existence with the land itself.  They grow everything they eat; they have learned to survive where survival is almost impossible.~
== BANOME25 ~Perhaps there is truth to your words, but I still see suffering here, and it is only exacerbated by Balthazar and his amassing army.~
== BLK#IYL  ~Balthazar does what he must to protect that he loves.  Would you not do the same?~
== BANOME25 ~I would never harm those I love under the pretence of protecting them, and you would do well to remember that.~
EXIT

