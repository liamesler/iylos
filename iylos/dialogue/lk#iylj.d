// Iylos' interjections
BEGIN LK#IYLJ

// -------------------------------------
// Trust Dialogues (2)
// -------------------------------------
// PC Dialogue 1
  IF WEIGHT #-2 ~Global("LK#IylosL_Talks","GLOBAL",1) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD1
    SAY ~I hope you're aware that I'm not here by choice, Bhaalspawn.  I am here to discern your intentions, and your motives.  If I had my way, I would still be in the Anauroch Desert, traveling where I wanted to.~ [LK#I153]  = ~I have no choice in this, much like yourself.  I just thought I should make that clear.~ [LK#I154]
    ++ ~I understand.~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_1
    ++ ~Regardless, you will live by MY rules, Monk.  I accepted you into the party on the premise that you would be helpful, and if I find that you are hindering me in any way, you will be gone like a shot.~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_2
    ++ ~You could always disobey your 'orders', whoever they're from.~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) SetGlobal("LK#IylosPCD1","GLOBAL",2)~ + PCD1_3
    ++ ~My motives?  My motives are none of your concern, Iylos.~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_4
    ++ ~I seek only to help the other Bhaalspawn, and stop this war.  That is all I want.  Are you at least willing to help me towards that cause?~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_5
  END

  IF ~~ PCD1_1
    SAY ~I'm so terribly glad.  Just as long as you understand that I am not here entirely for your benefit.  Now, shall we continue, or was there something you wished to ask of me?~
    ++ ~Since you asked...I do want to know something.  Why me?~ + PCD1_11
    ++ ~Stop the humour, Iylos, it isn't at all amusing.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_12
    ++ ~How would you react if I *were* evil, Iylos?~ + PCD1_13
    ++ ~No, there wasn't.~ + PCD1_14
    ++ ~Not really; was there anything more you wished to ask *me*?~ + PCD1_16
  END

  IF ~~ PCD1_2
    SAY ~Of course, <CHARNAME>.  It is your party, after all.  As long as what you ask me to do is not morally ambivalent or nefarious, of course.~ = ~And as long as you understand that I am not here entirely for your benefit.  Now, shall we continue, or was there something you wished to ask of me?~
    ++ ~Since you asked...I do want to know something.  Why me?~ + PCD1_11
    ++ ~Stop the humour, Iylos, it isn't at all amusing.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_12
    ++ ~How would you react if I *were* evil, Iylos?~ + PCD1_13
    ++ ~No, there wasn't.~ + PCD1_14
    ++ ~Not really; was there anything more you wished to ask *me*?~ + PCD1_16
  END

  IF ~~ PCD1_3
    SAY ~No.  I have my orders, and I will follow them, regardless of your wishes or whims, <CHARNAME>.  I will not let Balthazar down.~
    ++ ~Balthazar?~ + PCD1_31
    ++ ~I'm glad we understand each other.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD1_32
    ++ ~You're very...dedicated.  I admire that particular quality, and I hope it serves you well in...whatever you're doing.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PCD1_32
    ++ ~Fine.  Shall we continue?~ + PCD1_32
  END

  IF ~~ PCD1_4
    SAY ~They are not *my* concern, but the concern of another, who would know your purpose and intentions.  I do not enjoy acting in such a stead, but I do as I must.~
    ++ ~You've made it abundantly clear to me that you are not the kind of person I want in my party, Iylos.  Get you gone.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_41
    ++ ~I don't like others prying into my business, Iylos.  Please inform this person, whoever they are, that I do NOT appreciate such behaviour, and if I ever have the opportunity to meet them, I will not be afraid to tell them so to their face.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD1_42
    ++ ~Fine.  Shall we continue?~ + PCD1_12
  END

  IF ~~ PCD1_5
    SAY ~To prevent the war?  Yes.  But I do not know if you have any further intentions beyond that.  <CHARNAME>, it is not *my* concern, but the concern of another, who would know your purpose and intentions.  I do not enjoy acting in such a stead, but I do as I must.~
    ++ ~You've made it abundantly clear to me that you are not the kind of person I want in my party, Iylos.  Get you gone.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_41
    ++ ~I don't like others prying into my business, Iylos.  Please inform this person, whoever they are, that I do NOT appreciate such behaviour, and if I ever have the opportunity to meet them, I will not be afraid to tell them so to their face.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD1_42
    ++ ~Whoever this person is, Iylos, they do not have the right to make you do things you don't want to do.~ + PCD1_43
    ++ ~Fine.  Shall we continue?~ + PCD1_12
  END

  IF ~~ PCD1_11
    SAY ~(laugh) Need you even ask, <CHARNAME>?  You are quite possibly the most famous Bhaalspawn alive at this moment, and you don't understand why someone would be interested in your motives?  You have a big future ahead of you; you are one of the most *powerful* Bhaalspawn, due to Irenicus' tampering, some suspect.~
    ++ ~Irenicus' tampering?!  His TAMPERING?!  He tortured me!  He almost killed me, time and time again, only to heal me and repeat the process!!~ + PCD1_111
    ++ ~How do you know about that, Iylos?~ + PCD1_112
    ++ ~I may be powerful, but that isn't the point.  How dare someone invade my privacy like that?  They-you don't have the right!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD1_113
    ++ ~I didn't realise I was quite so...well known.  Nor the actions of my nemesis.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD1_114
    ++ ~You know nothing of me.  Whoever this person is, they know nothing of me.  You...no.  Just leave me alone.  I don't care, stay, leave, whatever you wish...just leave me alone.~ EXIT
    ++ ~But who IS this person, who is so interested in me, Iylos?~ + PCD1_114
  END

  IF ~~ PCD1_12
    SAY ~Whatever you wish, <CHARNAME>.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_13
    SAY ~It would depend upon the circumstances, I suspect.  If you were evil, I would be forced to take action, but since you assure me this is not the case, I will reserve judgment...for now.~
    ++ ~The circumstances?  What possible circumstances could there *be*?~ + PCD1_131
    ++ ~Fine.~ + PCD1_12
    ++ ~Well, I am evil.  Deal with it.~ + PCD1_132
    ++ ~I'm glad we understand each other.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD1_32
  END

  IF ~~ PCD1_14
    SAY ~Good.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_16
    SAY ~Not as of yet, <CHARNAME>.  But perhaps in future.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_31
    SAY ~(Damn it...)~ = ~Balthazar is...~ = ~Balthazar is someone I do not wish to speak of at the moment.  Leave me to my thoughts, Bhaalspawn.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_32
    SAY ~Thank you, <CHARNAME>.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_41
    SAY ~You will not be rid of me that simply, Bhaalspawn.  Even if I were to leave the party, I would dog your footsteps and continue watching you.  Would you not prefer to have me here than a mile back, where I cannot aid you in battle?~
    ++ ~That's blackmail, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_411
    ++ ~Fine.  Stay.  I don't care, just don't pester me!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_132
    ++ ~Leave.  I don't care if you dog my footsteps, at least you won't be here aggravating me!~ + PCD1_412
    ++ ~Bah, stay if you must.~ + PCD1_132
    ++ ~Leave, and if I find you dogging my footsteps I will not hesitate to take you to justice.~ + PCD1_413
  END

  IF ~~ PCD1_42
    SAY ~That is your prerogative.  I will inform them when I have the chance, I can...assure you.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_43
    SAY ~Then you obviously do not understand concepts such as 'loyalty', 'reliance' and 'trust'.  I have my orders, and I *will* follow them, regardless of your wishes or whims, <CHARNAME>.  I will not let Balthazar down.~
    ++ ~Balthazar?~ + PCD1_31
    ++ ~I'm glad we understand each other.~ + PCD1_32
    ++ ~You're very...dedicated.  I admire that particular quality, and I hope it serves you well in...whatever you're doing.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PCD1_32
    ++ ~Fine.  Shall we continue?~ + PCD1_32
  END

  IF ~~ PCD1_111
    SAY ~I apologise, that was...untactful of me.  What happened to you was regretful, and such atrocities should never be forced upon anyone...even a Bhaalspawn.  That does not change the fact that you are famous--infamous, some would say, and that there are many interested in what you stand for.~ = ~Surely you know that by now.  Regardless, the road lies before us, eager to be trodden upon.  Let us oblige, and end this fruitless conversation.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_112
    SAY ~I have my sources, <CHARNAME>--indeed, it is common knowledge if you know where to look.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_113
    SAY ~From what I have seen, <CHARNAME>, you are not above bending the rules to suit yourself when you require it.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_114
    SAY ~As I have said, I would prefer not to invade your privacy; but the circumstances dictate that I do, and for that I apologise.  You are, however, infamous--or famous, whichever you prefer, so you should know there are *many* interested in who you are and what you stand for.~ = ~You should be glad that Balthazar is the one I am aiding, rather than another who might use anything and everything against you.~
    ++ ~Balthazar?~ + PCD1_31
    ++ ~I'm glad we understand each other.~ + PCD1_32
    ++ ~You're very...dedicated.  I admire that particular quality, and I hope it serves you well in...whatever you're doing.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PCD1_32
    ++ ~Fine.  Shall we continue?~ + PCD1_32
  END

  IF ~~ PCD1_131
    SAY ~Many, <CHARNAME>...many.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_132
    SAY ~<CHARNAME>, you cannot fool me into leaving.  I am not some stupid coward, intent on betrayal at the first opportunity.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_152
    SAY ~Quite alright.  Shall we go?~ = ~I...no.  Let us go.~
    IF ~~ EXIT
  END

  IF ~~ PCD1_411
    SAY ~I do believe some people call it that, yes.  Regardless, I *will* follow my orders and watch you.~
    ++ ~Fine.~ + PCD1_132
    ++ ~Leave this party, Iylos.  Even if you do dog my steps, I will not have to deal with *you.*~ + PCD1_412
    ++ ~Just go, Iylos, and if I ever find you near me again I WILL take measures to make sure it does not happen again.~ + PCD1_413
  END

  IF ~~ PCD1_412
    SAY ~That is your prerogative.~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ PCD1_413
    SAY ~That is your prerogative.~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END


// -------------------------------------
// Iylos Dislike Dialogue (1)
// -------------------------------------
  IF WEIGHT #-2 ~Global("LK#IylosL_Talks","GLOBAL",3) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCDIS
    SAY ~Watch yourself, <CHARNAME>.  I don't trust you, and I will watch your every move until I find that you have proved yourself.  But till then, remember that I will be watching you--and I'm not afraid to take action if need be.~ [LK#I160]
    ++ ~What's that supposed to mean?!~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1)~ + PCDIS_1
    ++ ~I wouldn't be so cocky if I were you, Iylos--you don't know who you're dealing with here.  I am a Bhaalspawn.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosL_Talks","GLOBAL",1)~ + PCDIS_2
    ++ ~Whatever.  Look, I don't really care.~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1)~ + PCDIS_2
    ++ ~You're very welcome to leave if you want, Iylos.  You know I'm not going to commit some atrocity--or should, by now.~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1)~ + PCDIS_3
  END

  IF ~~ PCDIS_1
    SAY ~Watch yourself--exactly that.  I wouldn't have thought it terribly hard to understand.~
    ++ ~Are you threatening me?~ + PCDIS_11
    ++ ~Watch *yourself*, you arrogant git.  I do have other things to do that stand here listening to you whine!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCDIS_12
    ++ ~I'm not stupid.~ + PCDIS_13
    ++ ~(sigh) Look, Iylos.  I don't really like you, and you don't like me.  But we have a task to do--we have to stop this damned war, and I'm going to do that even if you aren't.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~  + PCDIS_14
  END

  IF ~~ PCDIS_2
    SAY ~My tutor was a Bhaalspawn; I know what you're capable of, <CHARNAME>.  Don't underestimate me.  I have watched you in battle; I have learnt your tactics, your weaknesses.~
    ++ ~Are you threatening me?~ + PCDIS_11
    ++ ~Watch *yourself*, you arrogant git.  I do have other things to do that stand here listening to you whine!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCDIS_12
    ++ ~I'm not stupid.~ + PCDIS_13
    ++ ~(sigh) Look, Iylos.  I don't really like you, and you don't like me.  But we have a task to do--we have to stop this damned war, and I'm going to do that even if you aren't.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~  + PCDIS_14
    ++ ~Whatever- just go away!~DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~  + PCDIS_21
  END

  IF ~~ PCDIS_3
    SAY ~Perhaps, but I'm not going to take that risk.~
    ++ ~Are you threatening me?~ + PCDIS_11
    ++ ~Watch *yourself*, you arrogant git.  I do have other things to do that stand here listening to you whine!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCDIS_12
    ++ ~I'm not stupid.~ + PCDIS_13
    ++ ~(sigh) Look, Iylos.  I don't really like you, and you don't like me.  But we have a task to do--we have to stop this damned war, and I'm going to do that even if you aren't.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~  + PCDIS_14
    ++ ~Whatever--just go away!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCDIS_21
  END

  IF ~~ PCDIS_11
    SAY ~It is not a threat; it is a promise, <CHARNAME>.~
    IF ~~ EXIT
  END

  IF ~~ PCDIS_12
    SAY ~I have more pressing things to do than to fight for you, but for some reason I continue to do so even though I no longer have to.  *I*, at least, am not proud of being a <PRO_SONDAUGHTER> of Murder, unlike you who revels in the slaughter.~
    IF ~~ EXIT
  END

  IF ~~ PCDIS_13
    SAY ~I would hope not, <CHARNAME>...I would hope not.~
    IF ~~ EXIT
  END

  IF ~~ PCDIS_14
    SAY ~I will aid you in stopping this war, and defeating the other Bhaalspawn; but I will *not* be party to any nefarious behaviour.  I hope you would have the sense to listen, and not ignore what I am saying.  I, at least, am not proud of being a <PRO_SONDAUGHTER> of Murder, like you who revels in the slaughter.~
    IF ~~ DO ~SetGlobal("LK#IylosProudOfBeingBhaalspawn","GLOBAL",1)~ EXIT
  END

  IF ~~ PCDIS_21
    SAY ~Just bear it in mind, <CHARNAME>.~
    IF ~~ EXIT
  END


// -------------------------------------
// Reputation Dialogues (2)
// -------------------------------------
// High reputation
  IF WEIGHT #-1 ~Global("LK#IylosReputationGoodTalk","GLOBAL",1)~ ReputationGood
    SAY ~<CHARNAME>, I must commend our current course of action.  Though I might not like who--or what--you are, I can respect that you do good in this world.~ [LK#I233]
    ++ ~Thank you, I think.  I try to do good whenever I can.~ DO ~IncrementGlobal("LK#IylosReputationGoodTalk","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + RG_1
    ++ ~I always strive to achieve the best solution to anything I can.~ DO ~IncrementGlobal("LK#IylosReputationGoodTalk","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + RG_2
    ++ ~I only do these sorts of deeds to keep up my reputation.  I really couldn't care less about 'doing good' or saving lives, but I do what I must to preserve my image.~ DO ~IncrementGlobal("LK#IylosReputationGoodTalk","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + RG_3
    ++ ~Whatever.~ DO ~IncrementGlobal("LK#IylosReputationGoodTalk","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + RG_1
  END

  IF ~~ RG_1
    SAY ~Hopefully you can maintain this streak of goodwill, <CHARNAME>.  One can but hope.~
    IF ~~ EXIT
  END

  IF ~~ RG_2
    SAY ~So you say.  Hopefully you can maintain this streak of good, <CHARNAME>.  One can but hope.~
    IF ~~ EXIT
  END

  IF ~~ RG_3
    SAY ~Regardless of the intention, the act itself is good.  I can but hope you will change your attitude--but for now, I can respect that you are helping people.~ = ~Even if it is towards a selfish end.~
    IF ~~ EXIT
  END

// Low reputation
  IF WEIGHT #-1 ~Global("LK#IylosReputationBadTalk","GLOBAL",1)~ ReputationBad
    SAY ~My accusations, it seems, have proved correct.  I cannot believe the things you do--you force me to do, and I will have no more of it.  I am leaving this group, and you.  Goodbye, <CHARNAME>--hopefully we will not meet again.~ [LK#I234]
    IF ~~ DO ~SetGlobal("LK#IylosLeavingBad","GLOBAL",1) SetGlobal("LK#IylosJoined","GLOBAL",0) SetGlobal("LK#IylosReputationBadTalk","GLOBAL",2) EscapeArea()~ EXIT
  END
  
  
// -------------------------------------
// Plot Dialogues (2)
// -------------------------------------
// Plot Dialogue 1
  IF WEIGHT #-2 ~Global("LK#IylosWhatNextDialogue","GLOBAL",1)~ Whatnext
    SAY ~And so another powerful Bhaalspawn falls by your hand, <CHARNAME>.  What do you now intend to do?~ [LK#I164]
    ++ ~Follow what the Solar told me...kill the other Bhaalspawn, that I may achieve my destiny.~ DO ~IncrementGlobal("LK#IylosWhatNextDialogue","GLOBAL",1)~ + Whatnext_1
    ++ ~I intend to take my rightful place as <PRO_LADYLORD> of Murder.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosWhatNextDialogue","GLOBAL",1)~ + Whatnext_2
    ++ ~Whatever I need to to stop this war.~ DO ~IncrementGlobal("LK#IylosWhatNextDialogue","GLOBAL",1)~ + Whatnext_3
    ++ ~Well, I was thinking we could rest a bit, and then maybe have something to eat...~ DO ~IncrementGlobal("LK#IylosWhatNextDialogue","GLOBAL",1)~ + Whatnext_4
  END

  IF ~~ Whatnext_1
    SAY ~The Solar?~
    ++ ~Yes.  I have a celestial being who visits me in my dreams, advising me of the best course of action.  She--or maybe he, I'm not sure--can be really quite aggravating when he...uh, they set their mind to it.~ + Whatnext_11
    ++ ~Mm.~ + Whatnext_11
    ++ ~The Solar is a celestial who helps me determine my path in life.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_11
    ++ ~Yeah.  She sometimes advises me--usually I ignore her advice, though.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_11
  END

  IF ~~ Whatnext_2
    SAY ~Then why should I bother trying to stop you, <CHARNAME>?~ = ~I know when I am fighting a hopeless battle.~
    ++ ~Yes.  I will be the <PRO_LADYLORD> of Murder, and all shall bow to me!  Bwahahahaha!~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_21
    ++ ~Eh...not really.  The whole murder thing's wearing a little thin, to be honest.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_22
    ++ ~You shouldn't try stopping.  You should just do what you're told, and shut up.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_21
    ++ ~Murder isn't necessarily a bad thing, Iylos.~ + Whatnext_23
    ++ ~I will be the <PRO_LADYLORD> of Murder.  You can't really do anything about it--you can try.  I've accepted my destiny.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_21
    ++ ~There's no battle.  I was just saying that to see how low your eyebrows could go.  There's this thing called joking...~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_4
  END

  IF ~~ Whatnext_3
    SAY ~Then I will support you.  But I would advise caution--the Five are not to be trifled with.  You may have killed 3 of them, but the next will not be so easy, I am sure.~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_4
    SAY ~Oh, <CHARNAME>, your wit brings tears to my eyes.  No, really.~ = ~Can you be serious, <CHARNAME>?  This is an important matter!~
    ++ ~Of course it is.  But I can't be serious, no--its just not in me, I'm afraid.~ + Whatnext_41
    ++ ~If you wish.  I don't know what I'm going to do--see what happens, I suppose.~ + Whatnext_42
    ++ ~I will kill the other Bhaalspawn, as I have said before.~ + Whatnext_43
    ++ ~I joke because I care.~ + Whatnext_44
    ++ ~I'll act on what the Solar told me.~ + Whatnext_1
  END

  IF ~~ Whatnext_11
    SAY ~You have...a *Solar*...which talks to you in your dreams.~ = ~What did this--Solar--tell you?~
    ++ ~That the prophecy does not say I am the one to shed the blood o'er the Sword Coast--the prophecy warns of what will happen if I do not stop the other Bhaalspawn.  So I intend to do just that.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~  + Whatnext_111
    ++ ~That's none of your business, is it?~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_112
    ++ ~The Solar told me many things--among them that I am destined to stop the war.  I couldn't really care less, but if I must do it to achieve my destiny...so be it.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~  + Whatnext_112
  END

  IF ~~ Whatnext_21
    SAY ~I see.  Obviously you have no need of me, then, <CHARNAME>--and I shall take my leave.  I will have naught to do with you attaining your godhood--I hope, when the time comes, you realise the folly of your course.  Goodbye, <CHARNAME>--I don't think we'll see each other again.~ = ~At least, I hope not.~ = ~Goodbye, <CHARNAME>.  Pray that we do not meet again.~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ Whatnext_22
    SAY ~I'm glad that is the case, <CHARNAME>.  I would not want to be helping one whose goal it was to become the next <PRO_LADYLORD> of Murder.~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_23
    SAY ~Perhaps not.  But the kind of murder you are suggesting--outright, cold blooded killing--is surely wrong.  Know that I would not want to be helping one whose goal it was to become the next <PRO_LADYLORD> of Murder, <CHARNAME>.  Pray that we do not meet again.~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_41
    SAY ~(sigh) Why do I bother...Sometimes, I wonder.~ = ~I would advise caution in this, regardless--the Five are not to be trifled with.  You may have killed 3 of them, but the others will not be so easy, I am sure.~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_42
    SAY ~I would advise caution--the Five are not to be trifled with.  You may have killed 3 of them, but the others will not be so easy, I am sure.~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_43
    SAY ~Then I would advise caution--the Five are not to be trifled with.  You may have killed 3 of them, but the others will not be so easy, I am sure.~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_44
    SAY ~I'm sure.  Regardless, I would advise caution in this--the Five are not to be trifled with.  You may have killed 3 of them, but the others will not be so easy, I am sure.~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_111
    SAY ~Truly?~ = ~Then I will support you in your decisions, <CHARNAME>--you seem to be doing well.  Only time will tell, however, I suppose.~ = ~Regardless, I would advise caution in this--the Five are not to be trifled with.  You may have killed 3 of them, but the others will not be so easy, I am sure.~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_112
    SAY ~I see.  Regardless of your intentions, <CHARNAME>, I would advise caution--the Five are not to be trifled with.  You may have killed 3 of them, but the others will not be so easy, I am sure.~
    IF ~~ EXIT
  END


// Plot Dialogue 3
CHAIN IF WEIGHT #-3 ~Global("LK#IylosBalthazarDead","GLOBAL",1)~ THEN
  LK#IYLJ BalthKilledHimself ~He's...he's dead?  No.  No!  No, damn it, no!  You didn't have to- you stupid fool!  Stupid!  Vith dos, Balthazar, whol morfelith uns'aa zexen'uma!  Ele?  Ele?!~ [LK#I235]
  == BVICON25  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Pathetic rivvil, he did us a favor.  Why mourn his passing, when he so obviously wanted this?~
  == LK#IYLJ  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~He never wanted to die!  He wanted to--damn it, he wanted to end this cursed war, this suffering, and he had to...to die...to...(sob)~
  == BVICON25  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Then do not snivel to yourself, let his sacrifice mean something, waelen kivvil.  Such displays of cowardice in the face of death always make my stomach heave.~
  == LK#IYLJ  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Shut it, Viconia, I have no need for this--this-~
  == BJAHEI25  IF ~InParty("Jaheira") InMyArea("Jaheira") InParty("Viconia") InMyArea("Viconia")~ THEN ~Viconia, for once, is right.  There was no shame in his death; he died for the cause he fought for.  Grieve, if you must, but celebrate that his ends may be achieved, even if it is through his own death.~
  == BVICON25  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Listen to me, wael!  This display serves *nothing*.  When I speak, it is not to spout nonsense as you, but to say something important.  Grow a backbone, and get to your feet.  Do it, male, NOW!~
  == LK#IYLJ  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Viconia, I am warning you.~ = ~Nobody but Balthazar tells me what to do, elg'caress.  Speak to me like that again, and you will wish you had never opened your mouth.~
  == BVICON25  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~So the pathetic wael of a man has backbone.  Good.  Do not waste our time with further pathetic displays, Iylos, as they serve no purpose but to waste our time.  We have far better things to do than watch you weep.~
  END
  ++ ~Iylos?  Are...are you alright?~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH1
  ++ ~I'm sorry.  I'm so sorry.~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH2
  ++ ~He had to die.  Whether he had died now or not doesn't matter, he would have killed himself anyway.~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH3
  + ~InParty("Viconia") InMyArea("Viconia")~ + ~Viconia is right.  Stop this snivelling so we can leave.~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH3
  + ~!InParty("Viconia") !InMyArea("Viconia")~ + ~Stop this snivelling, Iylos, so we can leave.  The sooner we're out of here, the better.~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH3

  CHAIN LK#IYLJ BKH1
    ~I- no, of course I'm not alright!  I will get my revenge.  His revenge.  Our revenge.  Melissan will pay for the evils she has done, if it is the last thing I do.~
  EXIT

  CHAIN LK#IYLJ BKH2
    ~It was not your fault.  I will get my revenge.  His revenge.  Our revenge.  Melissan will pay for the evils she has done, if it is the last thing I do.~
  EXIT

  CHAIN LK#IYLJ BKH3
    ~I will get my revenge.  His revenge.  Our revenge.  Melissan will pay for the evils she has done, if it is the last thing I do.~
  EXIT


// -------------------------------------
// Scenery Interjections (3)
// -------------------------------------
APPEND ~LK#IYLJ~

// Scenery Interjection, Amkethran
  IF WEIGHT #-2 ~AreaCheck("AR5500") Global("LK#IylosAmkethran","GLOBAL",1)~ LK#IylosAmkethranComment
    SAY ~Ah, Amkethran...wonderful, dusty, dry Amkethran.  Let us get our business over with, <CHARNAME>, that we may leave soon.~ [LK#IBLN]
    IF ~~ DO ~IncrementGlobal("LK#IylosAmkethran","GLOBAL",1)~ EXIT
  END

// Scenery Interjection, Watcher's Keep
  IF WEIGHT #-2 ~AreaCheck("AR3000") Global("LK#IylosWatchers1","GLOBAL",1)~ LK#IylosWatchersComment
    SAY ~Watcher's Keep is famed for its size...and also the amount of adventurers it has consumed.  If you truly wish to plumb its depths, <CHARNAME>, I advise caution; I have heard many things about the contents of Watcher's Keep--and none of them are good.~ [LK#IBLN] = ~All are deadly.~
    IF ~~ DO ~IncrementGlobal("LK#IylosWatchers1","GLOBAL",1)~ EXIT
  END

// After Watcher's Keep
  IF WEIGHT #-2 ~Global("LK#IylosWatchers6","GLOBAL",1)~ LK#IylosWatchers2
    SAY ~So we have plumbed the depths of Watcher's Keep...and survived.  I underestimated you, <CHARNAME>.  Perhaps I should be more careful with my words in future.~ [LK#IBLN] = ~Well done.~
    IF ~~ DO ~IncrementGlobal("LK#IylosWatchers6","GLOBAL",1)~ EXIT
  END


// -------------------------------------
// Balthazar scene
// -------------------------------------
// Balthazar scene, part 1
  IF WEIGHT #-2 ~Global("LK#IylosDialogueFadeNow","GLOBAL",2)~ FadeNowDialogue
    SAY ~I will be back in a few hours, <CHARNAME>.  Balthazar and I have many things to discuss.~ [LK#IBLN]
    IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lk#icut")~ EXIT
  END


// Balthazar scene, part 2
  IF ~Global("LK#IylosDialogueFadeNow","GLOBAL",3)~ returned
    SAY ~Thank you for waiting, <CHARNAME>.  We should get going.~ [LK#IBLN]
    ++ ~What happened?~ DO ~IncrementGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~ + returned_1
    ++ ~Fine.~ DO ~IncrementGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~ EXIT
    ++ ~Well?  Is Balthazar going to let us in?~ DO ~IncrementGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~ + returned_2
  END

  IF ~~ returned_1
    SAY ~What is it to you?  We talked, and that is all you need to know.~
    ++ ~Is Balthazar going to let us stay?~ + returned_2
    ++ ~You...you don't look happy.  Did you have a fight?~ + returned_11
    ++ ~Whatever.~ EXIT
  END

  IF ~~ returned_2
    SAY ~No, he is not.  He asks that we stay in the village and its surrounds, rather than the Monastery--we would disrupt the routines if we were to stay.~
    ++ ~And you don't believe a word of it, do you?~ + returned_21
    ++ ~Are you alright?  You look a bit...upset, for lack of a better word.~ + returned_11
    ++ ~Whatever.  Let's go.~ EXIT
  END

  IF ~~ returned_11
    SAY ~No, we...what occurred between Balthazar and I is not your concern.~
    ++ ~Yes it is.  I need to know whether you have made me another enemy, or if Balthazar is at least willing to work with us for the time being.~ + returned_111
    ++ ~I'm glad you didn't fight.  You seem to care for him.~ + returned_112
    ++ ~Okay--lets get going.~ EXIT
  END

  IF ~~ returned_21
    SAY ~No, I do not.  I...I cannot help but think there is something afoot, but I also find it hard to believe Balthazar would keep me in the dark.  I'm not sure.  I suppose we shall see.~
    IF ~~ EXIT
  END

  IF ~~ returned_111
    SAY ~He will help you for the moment, but that may change.  I cannot help but think there is something afoot, but I also find it hard to believe Balthazar would keep me in the dark.  I'm not sure.  I suppose we shall see.~
    IF ~~ EXIT
  END

  IF ~~ returned_112
    SAY ~He is like my brother.  And yet...I cannot help but think there is something afoot, but I find it hard to believe Balthazar would keep me in the dark.  I'm not sure.  I suppose we shall see.~
    IF ~~ EXIT
  END
  
END


// -------------------------------------
// Watcher's Keep Interjections
// -------------------------------------
// Demogorgon
INTERJECT_COPY_TRANS GORDEMO 1 LK#IylosWatchers4
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Ware!  There is something terribly, terribly amiss here--the very air reeks of deception.~
END

// Priest of Torm
INTERJECT_COPY_TRANS GORODR1 36 LK#IylosWatchers5
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~No- this cannot be!  We destroyed Demogorgon; I watched with my very eyes as he disintegrated!~
END

// -------------------------------------
// Saradush Interjections
// -------------------------------------
// Solder on wall
INTERJECT_COPY_TRANS SARGRD01 0 LK#IylosMilitiaGuard
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Perhaps you should listen to the frantic pleas of the peasants, Soldier, and take them to see this Gromnir.  Surely you can see they are suffering?~
  == SARGRD01 ~It is not my duty to look after the peasants, Goodman, just to defend the walls.  Good day to you.~
END

// Phlydian
INTERJECT_COPY_TRANS2 SARVAM01 1 LK#IylosPhlydian
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~They almost hunger for death...it must truly be a terrible way to live.  Or, not, as the case may be.~
  == SARVAM01 ~Yours is the life unfulfilling, bloodling!  Attack, my childer!  We shall not go down without a fight!~
END


// -------------------------------------
// Forest of Mir Interjections
// -------------------------------------
// Nyalee 1
INTERJECT_COPY_TRANS HGNYA01 6 LK#IylosNyalee
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~She is mad, <CHARNAME>--this woman has no compassion, no empathy.  I have had dealings with her before, and I know nothing good can come from anything she suggests.  Be wary of what she says!~ DO ~SetGlobal("LK#Nyaleecomment","GLOBAL",1)~
END

// Nyalee 2
INTERJECT_COPY_TRANS HGNYA01 30 LK#IylosNyalee2
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~I told you, <CHARNAME>--prepare yourself!  Nyalee, you stupid, foolish woman-~
  == HGNYA01 ~I remembers you...you were the one who tried to take Nyalee's home, weren't you?!  You lied, but you got your all in the end, hee hee!~ = ~And now, it is time for all you to pay!  Attack, woodsies, attack, my friends!  We must protects Yaga-Shura from the Bhaalspawn and it's friends!~
END


// -------------------------------------
// Amkethran
// -------------------------------------
// Amkethran Monk 1
INTERJECT AMMGRD01 2 LK#IylosMonk
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Yes, I believe he *would* be expecting us.  Is Melissan here?~
EXTERN AMMGRD01 3

// Balthazar
INTERJECT BALTH 8 LK#IylosBalth
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~Balthazar, are you even going to acknowledge me?~
  == BALTH ~Of course.  I was simply hoping to wait until my business with <CHARNAME> was concluded.  Will you join me in my quarters, Iylos?~ = ~At your earliest convenience, of course.~ DO ~SetGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~
COPY_TRANS BALTH 8

INTERJECT BALTH 9 LK#IylosBalth
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~Balthazar, are you even going to acknowledge me?~
  == BALTH ~Of course.  I was simply hoping to wait until my business with <CHARNAME> was concluded.  Will you join me in my quarters, Iylos?~ = ~At your earliest convenience, of course.~ DO ~SetGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~
COPY_TRANS BALTH 9

INTERJECT BALTH 10 LK#IylosBalth
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~Balthazar, are you even going to acknowledge me?~
  == BALTH ~Of course.  I was simply hoping to wait until my business with <CHARNAME> was concluded.  Will you join me in my quarters, Iylos?~ = ~At your earliest convenience, of course.~ DO ~SetGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~
COPY_TRANS BALTH 10

INTERJECT BALTH 11 LK#IylosBalth
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~Balthazar, are you even going to acknowledge me?~
  == BALTH ~Of course.  I was simply hoping to wait until my business with <CHARNAME> was concluded.  Will you join me in my quarters, Iylos?~ = ~At your earliest convenience, of course.~ DO ~SetGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~
COPY_TRANS BALTH 11

// Amkethran Monk 2
I_C_T AMMGRD05 2 LK#IylosMonkRefuses
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~And how're we supposed to get the chance when he refuses to speak to us?!~
  == AMMGRD05 ~Not my call, brother.  Balthazar is a very busy man, especially with the war preparations--there is nothing you can do but wait and hope for an audience.~
  == LK#IYLJ  ~Well, you tell Balthazar something then.  Tell him that if he does not stop what he is doing, Amkethran will waste away into the rock.  Hundreds will die.~
  == AMMGRD05 ~I will do so at the next opportunity I see, be assured.~
  == LK#IYLJ  ~Thank you.~
END

// Amkethran Monk 3
I_C_T AMMGRD01 0 LK#IylosGaaarghIHateYou
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~I am Iylos Mirdan, and I-~
  == AMMGRD01 ~I know who you are.~
  == LK#IYLJ  ~Let me in.~
  == AMMGRD01 ~I have orders not to let anyone in, including the likes of you, Mirdan.~
  == LK#IYLJ  ~The likes of me?!~
  == AMMGRD01 ~Move on--you're not getting in, however much you protest.~
  == LK#IYLJ  ~I will not forget this.~
  == AMMGRD01 ~I suspect not, no.~
END

//Leila (Amkethran Tavern)
CHAIN IF ~Global("LK#IylosLeila","GLOBAL",1)~ THEN
  LK#IYLJ LK#IylosLeila ~Leila?  Is- is that you?~ [LK#IBLN]
  == AMwenc01 ~Been a while since I've seen you 'round here, boy.~ DO ~IncrementGlobal("LK#IylosLeila","GLOBAL",1)~
  == LK#IYLJ  ~I'm not a boy any more, Leila.~
  == AMwenc01 ~No, I s'pose you're not, are you.  (sigh) How are you?~
  == LK#IYLJ  ~Well enough.~
  == AMwenc01 ~Come home.~
  == LK#IYLJ  ~Perhaps some day...for the moment, my duties to Balthazar and <CHARNAME> prevent me from doing so.~ [LK#I141]  = ~Leila, I-~ [LK#I142]
  == AMwenc01 ~We miss you, Iylos.  It's so empty at the Monastery some days...everyone is preparing for war, the citizens are on edge--nobody knows what to do, and Balthazar is doing nothing to help the situation.  He's almost handed control of Amkethran over to Kalo, you know.~
  == LK#IYLJ  ~He what?!~
  == AMwenc01 ~You heard me.  Look, Iylos--please, you need to come back soon.  You've been away for so long.~
  == LK#IYLJ  ~I- I can't, Leila.  I'm sorry.~
  == AMwenc01 ~Oh, child...~ = ~Keep yourself safe...and don't be gone to long.~
  == LK#IYLJ  ~I'll try.~
EXIT

// -------------------------------------
// Assorted Plot
// -------------------------------------
// Melissan, Siege camp
INTERJECT_COPY_TRANS SARMEL01 81 LK#IylosMelissanBalthazar
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~You know Balthazar?~
  == SARMEL01 ~Quite well, in fact.  I have worked with him in times past--we are friends.~
  == LK#IYLJ  ~He has never spoken to me of you, Melissan.  Why could that be?~
  == SARMEL01 ~Perhaps it was not the most pressing matter at hand, monk.~
  == LK#IYLJ  ~The Monastery will not shelter <CHARNAME>, Melissan; I believe you will find yourself sorely disappointed.~
  == SARMEL01 ~Perhaps, but I have faith that he will give succor.~
END

// Jamis Tombelthen
INTERJECT_COPY_TRANS AMTGEN01 1 LK#IylosTomelthen
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Touch me, or any of these people, Captain, and you will find yourself regretting your decision to come here.  <CHARNAME> and his friends are under the protection of the Monastery of Amkethran, and the Monastery will *not* stand for needless violence.~
  == AMTGEN01 ~<CHARNAME>'s death has been ordered by the Crown of Tethyr, and there is nothing I can do.  Attack!~
END


// -------------------------------------
// Abazigal's Stronghold
// -------------------------------------
// Monk
I_C_T BAZMONK 3 LK#IylosMonkAbaz
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~If I see Balthazar again, noble Monk, I will tell him of your sacrifice and dedication.  Sleep well, brother.~
  == BAZMONK ~Thank you...~
END


// -------------------------------------
// Throne of Bhaal
// -------------------------------------
// God Advice
INTERJECT_COPY_TRANS FINSOL01 27 LK#IylosFinSol
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~I must advise against this, <CHARNAME>.  Power does things to people, such as Amelissan here.  I am begging you...do not do this.  Don't become another Amelissan, or Irenicus, or Bodhi.~ = ~Stay mortal, keep your wits about you.  Consider this decision carefully.  Weigh *everything* up before you decide.~
END


// -------------------------------------
// Other...stuff
// -------------------------------------

// Post Decision Comment
EXTEND_BOTTOM FINSOL01 29
  IF ~InParty("Iylos") Global("LK#IylosPCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#IylosPCGod","GLOBAL",1)~ EXTERN LK#IYLJ LK#IylosPCGodNE
END

EXTEND_BOTTOM FINSOL01 30
  IF ~InParty("Iylos") Global("LK#IylosPCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#IylosPCGod","GLOBAL",1)~ EXTERN LK#IYLJ LK#IylosPCGodNE
END

EXTEND_BOTTOM FINSOL01 31
  IF ~InParty("Iylos") Global("LK#IylosPCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#IylosPCGod","GLOBAL",1)~ EXTERN LK#IYLJ LK#IylosPCGod
END

EXTEND_BOTTOM FINSOL01 32
  IF ~InParty("Iylos") Global("LK#IylosPCNotGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#IylosPCNotGod","GLOBAL",1)~ EXTERN LK#IYLJ LK#IylosPCNotGod
END

APPEND LK#IYLJ

  IF ~~ LK#IylosPCGodNE
    SAY ~Then you are already lost...I pray you do not become the beast you seem to be, <CHARNAME>.  I will not forget, and neither will you.  You had one last chance at redemption, and you did not choose it?  You are a fool.~
    COPY_TRANS FINSOL01 29
  END

  IF ~~ LK#IylosPCGod
    SAY ~I hope you will not fall prey to the power you will command, <CHARNAME>...I truly do.  Good luck.~
    COPY_TRANS FINSOL01 31
  END

  IF ~~ LK#IylosPCNotGod
    SAY ~You have no idea how relieved I am to hear that, <CHARNAME>.  Thank you.~
    COPY_TRANS FINSOL01 32
  END

END


// Volo
EXTEND_TOP SARVOLO 9 #16
  + ~InParty("Iylos")~ + ~Tell me about Iylos.~ + LK#Iylos_Volo
END

APPEND SARVOLO

  IF ~~ LK#Iylos_Volo
    SAY ~Iylos?  Who would that be?  I don't recall...~
    ++ ~That man right there.~ EXTERN LK#IYLJ volo2
    ++ ~The one glaring at you.~ EXTERN LK#IYLJ volo2
    ++ ~Guess.~ EXTERN LK#IYLJ volo2
  END


  IF ~~ LK#Iylos_3
    SAY ~Fine.~ = ~Far from his humble beginnings in the Monastery of Amkethran, Iylos has become one of the most powerful monks to walk the surface of Faerun.  None can match him in hand-to-hand combat, and his magical abilities stun even the most talented mages.  Originally suspicious of <CHARNAME>'s motives, Iylos now follows <CHARNAME> as a loyal companion and friend.  Famous for his wisdom and courage, he-~
    IF ~~ EXTERN LK#IYLJ volo_3
  END

END


APPEND LK#IYLJ

  IF ~~ volo2
    SAY ~Just get on with it.~
    IF ~~ EXTERN SARVOLO LK#Iylos_3
  END

  IF ~~ volo_3
    SAY ~<CHARNAME>, can we leave this man to his pathetic ramblings?  No truth has ever spewed forth from his mouth or his pen in the past, and I'm sure none shall come forth in the future.~ 
    IF ~~ EXTERN SARVOLO 9
  END

END