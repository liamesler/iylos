// Iylos' interjections
APPEND LK#IYLJ

// -------------------------------------
// Trust Dialogues (2)
// -------------------------------------
// PC Dialogue 1
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",1) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD1
    SAY ~I hope you're aware that I'm not here by choice, Bhaalspawn.  I am here to discern your intentions, and your motives.  If I had my way, I would still be in the Anauroch Desert, traveling where I wanted to.~ [LK#I153]  = ~I have no choice in this, much like yourself.  I just thought I should make that clear.~ [LK#I154]
    ++ ~I understand.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_1
    ++ ~Regardless, you will live by MY rules, Monk.  I accepted you into the party on the premise that you would be helpful, and if I find that you are hindering me in any way, you will be gone like a shot.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_2
    ++ ~You could always disobey your 'orders', whoever they're from.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) SetGlobal("LK#IylosPCD1","GLOBAL",2)~ + PCD1_3
    ++ ~My motives?  My motives are none of your concern, Iylos.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_4
    ++ ~I seek only to help the other Bhaalspawn, and stop this war.  That is all I want.  Are you at least willing to help me towards that cause?~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_5
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


// 2nd PC Dialogue
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",3) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD2
    SAY ~Why do you believe you are here, <CHARNAME>?~ [LK#I155]
    ++ ~I'm not sure.  Why do you think *you* are here?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_1
    ++ ~To rid the world of evil, obviously.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_2
    ++ ~To stop this damned war.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_3
    ++ ~To help people.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_4
    ++ ~Thats for me to know, Iylos, not you.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_5
  END

  IF ~~ PCD2_1
    SAY ~I am here to serve.~
    ++ ~Is that all you're here for?~ + PCD2_11
    ++ ~I don't think so.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_12
    ++ ~I see.~ + PCD2_12
    ++ ~Surely there's something else?~ + PCD2_13
    ++ ~How pathetic.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_13
  END

  IF ~~ PCD2_2
    SAY ~A noble cause, <CHARNAME>, if naive.~
    ++ ~You question the existence of evil?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_21
    ++ ~Aren't all causes naive, Iylos?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_22
    ++ ~How dare you?!  Fighting evil is what I *live* for!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_23
  END

  IF ~~ PCD2_3
    SAY ~A noble cause, <CHARNAME>.  And how do you propose to do that?~
    ++ ~I'm not entirely sure yet.  I'll find a way.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_31
    ++ ~By killing everyone else, of course.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_32
    ++ ~Look, Iylos, this isn't my choice--if I don't, the war will continue to devastate Toril.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_33
    ++ ~I will find a way--there has to be one.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_13
  END

  IF ~~ PCD2_4
    SAY ~A noble cause, <CHARNAME>.  But surely you can't help every person who needs it?~
    ++ ~Of course not; I help as many as I can, but there are always those who are beyond my reach.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_41
    ++ ~I certainly try.~ + PCD2_42
    ++ ~Does anyone *care*?  I help those who need it the most, not just every peasant who comes to me begging for gold.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_41
  END

  IF ~~ PCD2_5
    SAY ~That is your choice, <CHARNAME>.  My purpose is to serve, if you were going to ask.~
    ++ ~Is that all you're here for?~ + PCD2_11
    ++ ~I don't think so.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_12
    ++ ~I see.~ + PCD2_12
    ++ ~Surely there's something else?~ + PCD2_13
    ++ ~How pathetic.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_13
    ++ ~You believe so?  I know you well enough to say that there is more to you than just serving others.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_12
  END

  IF ~~ PCD2_11
    SAY ~I believe so.~
    ++ ~Surely you have some other aspiration, or dream?~ + PCD2_13
    ++ ~Fair enough.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  EXIT
    ++ ~Bah, how pathetic.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_12
    ++ ~You believe so?  I know you well enough to say that there is more to you than just serving others.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_12
  END

  IF ~~ PCD2_12
    SAY ~You can think whatever you want, <CHARNAME>--you evaded my question, so it is only fair I evade yours, is it not?~
    ++ ~I see.  If you're going to be like that, there's no point in having a conversation, is there?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
    ++ ~(laugh) Fair enough.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  EXIT
    ++ ~Evasion is the soul of courtesy, after all.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_121
    ++ ~Bah!  It is impossible to hold a sensible conversation with you.  Get you gone!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
  END

  IF ~~ PCD2_13
    SAY ~Perhaps, but you evaded my question--it is only fair that I evade yours.~
    ++ ~I see.  If you're going to be like that, there's no point in having a conversation, is there?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
    ++ ~(laugh) Fair enough.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  EXIT
    ++ ~Evasion is the soul of courtesy, after all.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_121
    ++ ~Bah!  It is impossible to hold a sensible conversation with you.  Get you gone!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
    ++ ~You really *are* pathetic, Iylos.  There is more to life than serving others.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_131
  END

  IF ~~ PCD2_21
    SAY ~Not its existence, no; rather the fact that you believe that you can rid the world of it.~
    ++ ~Why, you think it can't be done?~ + PCD2_211
    ++ ~Well...at least try my damnedest to.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_23
    ++ ~I suppose you are right, in a way; but even still, it is my motivation.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_23
    ++ ~Bah!  It is impossible to hold a sensible conversation with you.  Get you gone!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT

  END

  IF ~~ PCD2_22
    SAY ~(laugh) You have a point, <CHARNAME>.  All causes are naive in some way; the fight against evil is neverending, ceaseless, as evil will always find a way to exist--yet there are continually people who try to 'defeat' it, knowing it is only temporary.  It *does* serve a purpose--it keeps the balance from shifting too much in either direction.~ = ~If only they knew that true perfection lies in balance...the peaceful co-existence of forces.~
    ++ ~As you said--all causes are naive.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_221
    ++ ~Point taken.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_222
    ++ ~Perhaps, but I do not believe so.  One can defeat evil, if one tries hard enough.  One will eventually triumph over the other, it is inevitable.~ + PCD2_223
    ++ ~Purpose is silly, anyway.  We are here because we want to be here--or need to be.  Our motivation does not really matter.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_224
  END

  IF ~~ PCD2_23
    SAY ~(laugh) The fight against evil is neverending, ceaseless, as evil will always exist--yet there are continually people who try to 'defeat' it, knowing it is only temporary.  It *does* serve a purpose--it keeps the balance from shifting too much in either direction.~ = ~If only they knew that true perfection lies in balance...the peaceful co-existence of forces.  If you live for fighting against evil, then you are perhaps more than a little unbalanced.~
    ++ ~Point taken.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_222
    ++ ~Perhaps, but I do not believe so.  One can defeat evil, if one tries hard enough.  One will eventually triumph over the other, it is inevitable.~ + PCD2_223
    ++ ~Purpose is silly, anyway.  We are here because we want to be here--or need to be.  Our motivation does not really matter.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_224
    ++ ~Of course I'm *unbalanced*, idiot, I'm a Bhaalspawn!  I have a raging war in my head between what is right and what is easy in my head!  What are you, an imbecile?!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD2_231
    ++ ~Bah!  Is there any *point* in talking?!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD2_232
  END

  IF ~~ PCD2_31
    SAY ~And perhaps you will, but in my experience there is no way to stop something as large as a war without murder and bloodshed, regardless.  War begets more war.  Murder begets more murder.  There is no way to stop it without more war, and surely that is not what you want?~
    ++ ~I will do what I must.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_311
    ++ ~I...I guess not.  But there has to be another way...~ + PCD2_312
    ++ ~Then I will kill the leaders, and the rest will fall into disarray.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_223
    ++ ~Well, what do you suggest then, o all knowing monk?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_313
  END

  IF ~~ PCD2_32
    SAY ~That is one way to do it; a disgusting, vile solution to a disgusting, vile reality.  But murder begets more murder, <CHARNAME>; death begets more death.  Surely that is not what you want?~
    ++ ~I will do what I must.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_311
    ++ ~I...I guess not.  But there has to be another way...~ + PCD2_312
    ++ ~Then I will kill the leaders, and the rest will fall into disarray.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_223
    ++ ~Well, what do you suggest then, o all knowing monk?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_313
  END

  IF ~~ PCD2_33
    SAY ~I understand that, <CHARNAME>.  But if you believe that stopping the war is your purpose, you must have a way to do so or you will be running blind.  Are you so ignorant that you don't see that?~
    ++ ~I'm not ignorant, Iylos.  I know the consequences of walking in blind, but I don't have much choice here.  I've been forced into a role I don't want to play, but the more I evade it, the more I am forced to take an active role in it.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_331
    ++ ~I will find a way.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_332
    ++ ~Perhaps...perhaps I am.  I don't know anymore.~ + PCD2_331
    ++ ~How dare you?!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_333
  END

  IF ~~ PCD2_41
    SAY ~There are others who cannot be helped, <CHARNAME>, and those who do not *want* to be helped.  When you give to the poor or donate to charity, you may believe you are doing good when in fact it may just be the opposite which is occuring.~
    ++ ~So what, I shouldn't give money to the poor, or donate to charity?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_341
    ++ ~That's a very cynical view, Iylos.~ + PCD2_342
    ++ ~How terrible it must be for you to look out to the world with such a view.~ + PCD2_342
    ++ ~Of course there are--I give to those who need it, and only if it will actually help them.  I do what I can.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_342
    ++ ~Are you calling me evil?~ + PCD2_342
  END

  IF ~~ PCD2_42
    SAY ~Fair enough, I suppose.  But when you give to charity, you may believe you are doing good when in fact it may just be the opposite occuring.~
    ++ ~So what, I shouldn't give money to the poor, or donate to charity?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_341
    ++ ~That's a very cynical view, Iylos.~ + PCD2_342
    ++ ~How terrible it must be for you to look out to the world with such a view.~ + PCD2_342
    ++ ~Of course there are--I give to those who need it, and only if it will actually help them.  I do what I can.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_342
    ++ ~Are you calling me evil?~ + PCD2_342
  END

  IF ~~ PCD2_121
    SAY ~Of course.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_131
    SAY ~Look, <CHARNAME>, I- I barely know you, so I have no reason to share anything with you.  Perhaps another time.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_211
    SAY ~No, it cannot.  The fight against evil is neverending, ceaseless, as evil will always find a way to exist--yet there are continually people who try to 'defeat' it, knowing it is only temporary.  It *does* serve a purpose--it keeps the balance from shifting too much in either direction.~ = ~If only they knew that true perfection lies in balance...the peaceful co-existence of forces.  If you live for fighting against evil, then you are perhaps more than a little unbalanced.~
    ++ ~Point taken.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_222
    ++ ~Perhaps, but I do not believe so.  One can defeat evil, if one tries hard enough.  One will eventually triumph over the other, it is inevitable.~ + PCD2_223
    ++ ~Purpose is silly, anyway.  We are here because we want to be here--or need to be.  Our motivation does not really matter.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_224
    ++ ~Of course I'm *unbalanced*, idiot, I'm a Bhaalspawn!  I have a raging war in my head between what is right and what is easy continually in my head!  What are you, an imbecile?!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD2_231
    ++ ~Bah!  Is there any *point* in talking?!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD2_232
  END

  IF ~~ PCD2_221
    SAY ~Indeed they are.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_222
    SAY ~Balance isn't always achievable, but we should continually strive toward it.  Even you, <CHARNAME>, even one as turbulent as you can achieve balance if you try hard enough.  Perhaps.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_223
    SAY ~If you believe so.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_224
    SAY ~Motivation is everything; whether you're forced or not, you must have motivation or you wouldn't continue.~
    ++ ~Perhaps.~ EXIT
    ++ ~If that is what you want to think, Iylos.~ EXIT
  END

  IF ~~ PCD2_231
    SAY ~Balance isn't always achievable, but we should continually strive toward it.  Even you one as hopeless and turbulent as you can achieve balance if you try hard enough.  Perhaps.  Whether you would even bother trying, of course, is debatable.  Bah.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_232
    SAY ~Perhaps not, if you're not going to listen.  (sigh)~
    IF ~~ EXIT
  END

  IF ~~ PCD2_311
    SAY ~Of course.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_312
    SAY ~Of course there would be, but it is up to you to find it.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_313
    SAY ~I don't know--you're the leader of this group, Bhaalspawn.  Think for yourself.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_331
    SAY ~At least you're willing to admit that, I suppose.  You cannot evade destiny, according to many--I would like to believe we have choice in this life.  Some of us, perhaps...but perhaps not such as you.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_332
    SAY ~Perhaps, but it is up to you to find it.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_333
    SAY ~I dare because I must.  You *will* die if you don't know what you're doing--you'll walk in blinded on either side, and someone will come from behind.  Think it through carefully, <CHARNAME>.  Decide on a course of action, and follow it.~
    ++ ~Perhaps you should take your own advice on occasion, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_3331
    ++ ~Whatever.~ EXIT
    ++ ~If you say so.~ EXIT
  END

  IF ~~ PCD2_341
    SAY ~I'm not saying that--I'm saying be wary of your actions, for you might not always know the course of what will happen.  Sometimes theory and reality are as fire and water, and will not meld whatever you do or might wish.  Perhaps it is a gritty, dark view, yes; but I do not dwell in the realm of mayhaps and suppositions.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_342
    SAY ~I'm saying be wary of your actions, for you might not always know the course of what will happen.  Sometimes theory and reality are as fire and water, and will not meld whatever you do or might wish.  Perhaps it is cynical, yes; but it is also realistic.  I do not dwell in the realm of mayhaps and suppositions.~
    IF ~~ EXIT
  END

  IF ~~ PCD2_3331
    SAY ~Bhaalspawn fool...~
    IF ~~ EXIT
  END


// -------------------------------------
// Friendship Dialogues (4)
// -------------------------------------
  IF  WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",5) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD3
    SAY ~<CHARNAME>, I...I have something I wish to speak to you about.~ [LK#I230]
    ++ ~Hmm?~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD3_0
    ++ ~Yes?  Was there something?~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD3_0
    ++ ~Bah!  Cease staring at me, decrepid fool!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD3_0
  END

  IF ~~ PCD3_0
    SAY ~I can't help but wonder what I will see when I next turn around to face you...~ [LK#I156]  = ~The <PRO_MANWOMAN>, or the monster.  What do you think it'll be?  A murderer--an innocent who is unable to stop <PRO_HISHER> homicidal urges, or a <PRO_MANWOMAN> fighting for <PRO_HISHER> mind in a battle of wills?~
    ++ ~What are you talking about, Iylos?~ + PCD3_1
    ++ ~I try, Iylos, I really do...but this time, I just don't understand what the in the *hells* you're talking about.~ + PCD3_1
    ++ ~What?~ + PCD3_1
    ++ ~Shut up, Iylos.  I don't have time for this.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_2
  END

  IF ~~ PCD3_1
    SAY ~(sigh) You are a monster, <CHARNAME>--your instinct is to kill anything, everything.  I can't help but think that the next time I turn around, you'll be the slayer, murdering some innocent who did naught but exist in your presence.~ = ~There are...ways...to help control your Bhaal essence, to direct it toward the cause of good and not towards evil.  I was told by Balthazar that if you were amiable to his cause, to give you the opportunity to learn some of these techniques.  He taught them to me, and they are in truth simple exercises to help control the mind and calm the spirit.~ = ~I'm debating whether it is worth teaching you, or not- I'm even going so far as to give you the option, when perhaps I should not.~
    ++ ~I would be glad to learn some of these 'exercises', Iylos, if it will help control this...thing...inside me.  I don't like having the essence of a murderous dead god playing me like a harp.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_11
    ++ ~Yes!  I mean, of course I would!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_11
    ++ ~I'm not so sure.  What exactly do these exercises *do*?  Why bother?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_13
    ++ ~I don't want to learn any of your pathetic 'mental training' techniques.  My mind is just the way I like it, and that's how I'm going to keep it!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_12
    ++ ~I might be willing to participate in these exercises, but while you're at it, can you teach the rest of Faerun as well?!  Sometimes I think my dark essence is used far too much to explain away something everyone has within them.  The ability to destroy, or to build.~ + PCD3_12
  END

  IF ~~ PCD3_2
    SAY ~You are a monster, <CHARNAME>--your instinct is to kill anything, everything.  I can't help but think that the next time I turn around, you'll be the slayer, murdering some innocent who did naught but exist in your presence.~ = ~There are...ways...to help control your Bhaal essence, to direct it toward the cause of good and not towards evil.  I was told by Balthazar that if you were amiable to his cause, to give you the opportunity to learn some of these techniques.  He taught them to me, and they are in truth simple exercises to help control the mind and calm the spirit.~ = ~I'm debating whether it is worth teaching you, or not- I'm even going so far as to give you the option, when I'm almost certain I should not.  You are a fool, and do not deserve such a chance as I could give you.~
    ++ ~I would be glad to learn some of these 'exercises', Iylos, if it will help control this...thing...inside me.  I don't like having the essence of a murderous dead god playing me like a harp.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_11
    ++ ~Yes!  I mean, of course I would!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_11
    ++ ~I'm not so sure.  What exactly do these exercises *do*?  Why bother?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_13
    ++ ~I don't want to learn any of your pathetic 'mental training' techniques.  My mind is just the way I like it, and that's how I'm going to keep it!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_12
  END

  IF ~~ PCD3_11
    SAY ~I can't for the life of me wonder why.  I will wake you up tomorrow morning, before the sun rises, so I can teach you some of these techniques.~
    ++ ~Thank you, Iylos.  I would appreciate that...perhaps I can even teach you a few things.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) SetGlobal("BLK#IylosMeditation","GLOBAL",1)~ EXIT
    ++ ~Fine by me.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Before sunrise?  How am I supposed to wake up before *sunrise*?  (groan)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_111
    ++ ~I'm not sure I want to be taught anything by you, actually...~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_112
  END

  IF ~~ PCD3_12
    SAY ~I am offering you a chance to overcome your heritage!  Are you ignorant, stupid, or do you prefer to revel in the death that it offers you?!~
    ++ ~Perhaps, but that is *my* choice, not yours.  And I'm choosing to 'give up the opportunity', not you.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_112
    ++ ~Shut up, I'm not *stupid*, I JUST HAVE PROBLEMS!!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_121
    ++ ~Fine, I will agree.  For the time being.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_122
  END

  IF ~~ PCD3_13
    SAY ~They will help you better control your mind, and organise your thoughts.  Balthazar taught them to me so I could show you how to help control or at least influence your Bhaal blood.~
    ++ ~Okay, I'll do it.  Sunrise tomorrow.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_122
    ++ ~No thanks.~ + PCD3_112
    ++ ~Why would I want to do something like that?!  Get lost!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1121
    ++ ~Shut up, I'm not *stupid*, I JUST HAVE PROBLEMS!!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_122
  END

  IF ~~ PCD3_111
    SAY ~I'm sure you'll survive, <CHARNAME>.~
    IF ~~ EXIT
  END

  IF ~~ PCD3_112
    SAY ~Your choice, but you are missing a valuable opportunity--you aren't a fool, <CHARNAME>.  Surely you can see the merit in this?~
    ++ ~No, actually, I can't.  Look, Iylos, I just don't want to do it.  End of story.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1121
    ++ ~Whatever.  Fine.  I'll do it.~ DO ~SetGlobal("BLK#IylosMeditation","GLOBAL",1)~ + PCD3_122
    ++ ~Oh, fine...I'll do it, in a reluctant manner, of course!  And I'll pout about it, and sulk!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_1122
    ++ ~I'm NOT doing it, idiot!  Can't you get that through your thick skull?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1123
  END

  IF ~~ PCD3_121
    SAY ~If you say so, <CHARNAME>...if you say so.  You're missing a valuable opportunity--you aren't a fool, are you, <CHARNAME>?  Surely you can see the merit in this?~
    ++ ~No, actually, I can't.  Look, Iylos, I just don't want to do it.  End of story.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1121
    ++ ~Whatever.  Fine.  I'll do it.~ + PCD3_122
    ++ ~Oh, fine...I'll do it, in a reluctant manner, of course!  And I'll pout about it, and sulk!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_1122
    ++ ~I'm NOT doing it, idiot!  Can't you get that through your thick skull?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1123
  END

  IF ~~ PCD3_122
    SAY ~Good--tomorrow morning, then.~
    IF ~~ EXIT
  END

  IF ~~ PCD3_1121
    SAY ~How pathetic.~
    IF ~~ EXIT
  END

  IF ~~ PCD3_1122
    SAY ~Of course--but you'll survive, I'm sure.  Tomorrow morning, then.~
    IF ~~ EXIT
  END

  IF ~~ PCD3_1123
    SAY ~I can't understand why you would throw away such an opportunity--*you* are the simpleton, the idiot, the fool here, <CHARNAME>.  Not me.~
    IF ~~ EXIT
  END



// 4th PC Dialogue (Friendship)
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",7) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD4
    SAY ~Good morning, <CHARNAME>.  I trust you slept well; are you ready to begin?~ [LK#I157]
    ++ ~Yes, thank you.  Let's get started.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD4_1
    ++ ~No...could you please explain exactly what we'll be doing?~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD4_2
    ++ ~I guess so.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD4_1
  END

  IF ~~ PCD4_1
    SAY ~Imagine the desert, a vast expanse of yellow sand and blue sky.  Take a deep breath; imagine it is filling your chest, your whole body.  Wait a moment...and breath out.~ [LK#I159]  = ~Take a few more deep breaths, and relax.  Imagine the light of the warm sun infusing you; it starts at the tip of your head, a pleasant, glowing energy.  It spreads to your neck, your shoulders--your arms, your fingertips.~ = ~Feel the breeze on your skin; notice which parts of you are warm, and which are cold.  Feel the light spreading to your heart.  It becomes brighter, the warm glow banishing the darkness.  The light uses your heart as a focus, and radiates back out to your fingers, spreading to your stomach, your legs, your toes.~ = ~Feel the sand beneath your feet, comfortable and inviting.  Let your worries, your doubts, your fears drain down into the earth and away, until all that is left is peace and golden light.~ = ~It shines out from every part of you--nothing can touch you if you do not will it.  You are at peace; you are safe.  Open your eyes.~ = ~The sunrise is beautiful, is it not?  The dusky pinks, mingling with the soft oranges...~ = ~It'll rain later today, <CHARNAME>.  We should get moving.~
    ++ ~I...I feel the calmest I have in...since I can remember.  Thank you, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~ + PCD4_11
    ++ ~The sky is so...so *beautiful*.  I've never really gotten up this early before to appreciate it...~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~ + PCD4_12
    ++ ~Well, that was a total waste of time.  I don't feel any different at all.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD4_13
    ++ ~Wow...what *was* that?  I felt so serene, so at peace--I'm not...I feel almost like Bhaal can't touch me.  Like for once, I'm the one who has the murder in check.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2) SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~ + PCD4_11
    ++ ~Wasn't that just a normal meditation?  I've done such things before, and that was no different.  Nonetheless...I do feel a little better.  Thank you.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_11
    ++ ~That was pathetic.  You think a combination of words and dramatic pauses can stop my Bhaal essence from 'taking over' me?  Hah.  A completely wasteful lack of sleep...surely I could have spent it better than *that*.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD4_13
  END

  IF ~~ PCD4_2
    SAY ~It is a simple meditation, <CHARNAME.  It will not cause you any harm at all, I promise you--Balthazar taught it to me as a young monk, and found that it helped him to bring peace to his conflicted existance.  It helps to calm the mind, still the onslaught of thoughts and emotions, and bring serenity upon you.  Shall we start?~
    ++ ~Yes.~ + PCD4_1
    ++ ~Uh...no, I don't think so.  Sorry.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD4_1131
  END

  IF ~~ PCD4_11
    SAY ~It is a simple meditation, <CHARNAME>--Balthazar taught it to me as a young monk, finding it helped him bring peace to his conflicted existance.  It helps to calm the mind, still the onslaught of thoughts and emotions, and bring serenity upon you.~
    ++ ~It worked...incredibly well.  I feel less tense, less...well, less everything.  Bhaal is still there, but it is less insistent...I feel peace.  Can we do it again tomorrow morning?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_111
    ++ ~It worked quite well.  Shall we get going, as you said?~ + PCD4_112
    ++ ~Well...it didn't really stop any of those things, but I do feel a bit better.~ ~SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~  DO ~SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~ + PCD4_113
    ++ ~I'm calm, but eh...nothing else.  Thanks anyway.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD4_114
  END

  IF ~~ PCD4_12
    SAY ~Yes, it is.~
    IF ~~ EXIT
  END

  IF ~~ PCD4_13
    SAY ~<CHARNAME>, kindly refrain from ever speaking to me again, if you can help it.  If you cannot appreciate the sanctity and serenity of meditation, I cannot appreciate nor side with you.~
    IF ~~ DO ~SetGlobal("LK#IylosAngryWithPC","GLOBAL",1)~ EXIT
  END

  IF ~~ PCD4_111
    SAY ~Of course.  I'm glad it helped, <CHARNAME>.~
    ++ ~You have no idea.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Thank you, Iylos--I really appreciate it.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_1111
    ++ ~Thanks, I guess.~ EXIT
  END

  IF ~~ PCD4_112
    SAY ~Of course.  I'm glad it helped, <CHARNAME>.~
    IF ~~ EXIT
  END

  IF ~~ PCD4_113
    SAY ~I'm glad it helped, if only a little.  I'm not surprised; it often takes a lot of practice to meditate properly, but hopefully I can help a little each morning.~
    ++ ~I'd like that.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Uh...no thanks.  I mean, it was interesting, but I wouldn't want to do that *every* morning.~ + PCD4_1131
    ++ ~Okay.~ EXIT
    ++ ~No way.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD4_1131
  END

  IF ~~ PCD4_114
    SAY ~I'm not surprised; it often takes a lot of practice to meditate properly, but hopefully I can help a little each morning.~
    ++ ~I'd like that.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Uh...no thanks.  I mean, it was interesting, but I wouldn't want to do that *every* morning.~ + PCD4_1131
    ++ ~Okay.~ EXIT
    ++ ~No way.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD4_1131
  END

  IF ~~ PCD4_1111
    SAY ~No problem.~
    IF ~~ EXIT
  END

  IF ~~ PCD4_1131
    SAY ~Your choice, but it could be very beneficial...~
    ++ ~Alright, fine, I'll do it.  But can we do it a little bit later, perhaps?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_11311
    ++ ~No thanks.~ DO ~SetGlobal("BLK#IylosNoMeditation","GLOBAL",1)~ + PCD4_11312
  END


  IF ~~ PCD4_11311
    SAY ~If you wish.~ [LK#I221]
    ++ ~Thank you, Iylos.  I'd like that.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_1
    ++ ~Nah, actually, I've changed my mind.  No thanks.~ + PCD4_11312
  END

  IF ~~ PCD4_11312
    SAY ~<CHARMAME>, you are a fool.~
    IF ~~ EXIT
  END
  

// 5th PC Dialogue (Friendship)
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",9) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD5
    SAY ~<CHARNAME>, I have...something I wish to impart to you.~ [LK#I161]  = ~No!  No, do not say anything.  I do not want to hear it right now.~ [LK#I162]  = ~My actions towards you have been...regrettable.  I have been callous, rude, and unkind, and this is not the way one should treat his companions.~ = ~I did not want to believe you could be human.  I wanted to believe you some monstrous beast in human guise, who would snap momentarily and slaughter every man, woman and child around <PRO_HIMHER>.~ = ~I was wrong.  And I understand if you do not wish me to be in this party anymore, I just wished to tell you that- I, it was not my intention to be so rude to you, nor your companions.~
    ++ ~Why apologise, Iylos?  It's already forgiven.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD5_1
    ++ ~ I kept you with me because you were a good meat-shield, and I...I thought you should know that.  If you'd like to leave, that's okay.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD5_2
    ++ ~I see.  Well, that's too bad.  You can leave now, Iylos.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD5_3
    ++ ~You can be so stupid sometimes, Iylos, you really can.  (sigh)~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD5_4
  END

  IF ~~ PCD5_1
    SAY ~Then let us continue--but still, I made a mistake.  I judged you prematurely, and I would not like to make the mistake again.  I...thank you, <CHARNAME>, for putting up with my behaviour.  Perhaps we can be more cordial in future.~
    IF ~~ EXIT
  END

  IF ~~ PCD5_2
    SAY ~How very droll, <CHARNAME>.~
    ++ ~I wasn't joking.~ + PCD5_21
    ++ ~Thanks.  Your apology is accepted, Iylos, but--I swear, if you try to get me to meditate again, I will start to tear out my hair.~ + PCD5_22
    ++ ~Droll?  Me?  Never.~ + PCD5_23
    ++ ~Glad you liked it.  Now, get lost.  I've no need for you in my party if you're going to apologise like some pansy!~ + PCD5_21
  END

  IF ~~ PCD5_3
    SAY ~If I...must.  Perhaps we shall meet again, <CHARNAME>.~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftGood","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ PCD5_4
    SAY ~Occasionally, yes, I can.  What say you, <CHARNAME>?  Do you accept my apology--even though perhaps it was not the wisest of actions, in retrospect...bah.~
    ++ ~Apology accepted, Iylos.  Don't worry about it.  We're all a little snarky sometimes.~ EXIT
    ++ ~I can't accept your apology, Iylos, but please stay with the group.  You are rather useful, I'll give you that.~ + PCD5_41
    ++ ~I'm not sure.  Maybe.  Give me some time to think about it.~ + PCD5_42
    ++ ~No.  Just...just leave, Iylos.  Please.~ + PCD5_3
  END

  IF ~~ PCD5_21
    SAY ~I see.  In that case, perhaps I should leave.~
    ++ ~No, please stay.  You may be a meatshield, but you're a *good* meatshield!~ + PCD5_41
    ++ ~You can stay.  For now.~ + PCD5_41
    ++ ~Goodbye, then.  Fare thee well!~ + PCD5_3
  END

  IF ~~ PCD5_22
    SAY ~I will...try.  I cannot promise such a feat, however- but surely the lure of meditation will grasp you eventually.~
    IF ~~ EXIT
  END

  IF ~~ PCD5_23
    SAY ~Of course not.~
    IF ~~ EXIT
  END

  IF ~~ PCD5_41
    SAY ~So I am to be used as a meatshield, then.  I suppose there is nothing for it.~
    IF ~~ EXIT
  END

  IF ~~ PCD5_42
    SAY ~So, I am to be used as a meatshield, then.  I await your answer.~
    IF ~~ DO ~SetGlobal("LK#IylosFriendsDecisionUncertain","GLOBAL",1)~ EXIT
  END


// 6th PC Dialogue (Friendship)
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",11) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD6
    SAY ~<CHARNAME>, your pack is open- here...~ [LK#I231] = ~There we are, fixed.~
    ++ ~Did you just do something...kind?  For me?  Who are you, and what have you done with Iylos?!~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD6_1
    ++ ~Thanks, Iylos.  I didn't realise it had come open.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD6_2
    ++ ~It's all almost over, isn't it?  Oh, thank you.  Ah, I wish it didn't come down to these battles- I wish there was another way to do this.  (sigh)~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD6_3
    ++ ~I could have done that myself, Iylos.~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD6_4
  END

  IF ~~ PCD6_1
    SAY ~Are you insinuating that I am anything less than courteous, <CHARNAME>?~ = ~...what?  Why're you looking at me like that?~
    ++ ~You honestly can't have just said that.  Iylos, you're one of the most terrible people I know.  You really are.  (laugh)~ + PCD6_11
    ++ ~Ah...no reason.  No reason at all.~ + PCD6_11
    ++ ~You're being sarcastic, right?  Anything less than courteous?  Hah!  Now *that* is a joke.~ + PCD6_11
    ++ ~Iylos, you're a rude, obnoxious twat!  You've even admitted it!~ + PCD6_11
  END

  IF ~~ PCD6_2
    SAY ~No problem, <CHARNAME>.  I just hate to see things out of order, is all.  I've noticed that you aren't the most...organised person, sometimes.~ = ~I'm just trying to help out however I can.~
    ++ ~I know my faults.  You don't need to lord them over me.~ + PCD6_21
    ++ ~I am so!  As you'll recall, it was I who organised *your* pack last night, Iylos.~ + PCD6_22
    ++ ~If you say so.~ EXIT
    ++ ~No, I'm not.  But I'm more intelligent than you.~ + PCD6_23
  END

  IF  ~~ PCD6_3
    SAY ~So do I.  But it seems there is no other way, as it is...unless some miracle were to occur, we're stuck fighting.  I suppose there isn't much for it but to keep going--it's either us, or them, at this point.~
    ++ ~That's a rather drastic turnaround, Iylos.  What provoked this change of view?~ + PCD6_31
    ++ ~I know what you mean.  (sigh)~ EXIT
    ++ ~Whatever.~ EXIT
    ++ ~Well, we can always pray.~ + PCD6_32
  END

  IF ~~ PCD6_4
    SAY ~I'm sure you could, but it is always easier for someone else to do it.  And I know your penchant for being unorganised; you could have forgotten about it, and lost something important.~ = ~I'm just trying to help out however I can.~
    ++ ~I know my faults.  You don't need to lord them over me.~ + PCD6_21
    ++ ~I am so!  As you'll recall, it was I who organised *your* pack last night, Iylos.~ + PCD6_22
    ++ ~If you say so.~ EXIT
    ++ ~No, I'm not.  But I'm more intelligent than you.~ + PCD6_23
  END

  IF ~~ PCD6_11
    SAY ~If you say so, <CHARNAME>.  At least I can't compare to your cooking, however...simply atrocious.~ = ~Ah, but don't worry.  We have at least one consummate cook in this party.~
    ++ ~You can...cook?  Since when?  Why haven't you said this before?!~ + PCD6_111
    ++ ~My cooking is wonderful!  It is *yours* which is to be deplored!~ + PCD6_112
    ++ ~My cooking is fine, Iylos.  Perhaps it is your tastebuds which have failed you.~ + PCD6_113
    ++ ~Well, you can cook from now on then, if you are such a consummate chef!  I would be happy to give up the job.~ + PCD6_114
    ++ ~Lucky I'm not the one who cooks, then.~ + PCD6_115
    ++ ~You can always go without food, if you want.~ + PCD6_114
  END

  IF ~~ PCD6_21
    SAY ~Of course I do.  *Someone* has to make sure you don't get conceited, after all.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_22
    SAY ~Ah...true.  Even still, you're remarkably unorganised...for...~ = ~I've really lost that, haven't I?  (sigh)~
    ++ ~Yep.  I got you good.~ + PCD6_221
    ++ ~Bwahahaha.~ + PCD6_221
    ++ ~Don't worry about it, Iylos.  *Someone* has to make sure you don't get conceited, after all.~ + PCD6_222
  END

  IF ~~ PCD6_23
    SAY ~If you say so, <CHARNAME>.  I can't say the same about you when you cook, however...simply atrocious.  (laugh)~ = ~Ah, but don't worry.  We have at least one consummate cook in this party.~
    ++ ~You can...cook?  Since when?  Why haven't you said this before?!~ + PCD6_111
    ++ ~My cooking is wonderful!  It is *yours* which is to be deplored!~ + PCD6_112
    ++ ~My cooking is fine, Iylos.  Perhaps it is your tastebuds which have failed you.~ + PCD6_113
    ++ ~Well, you can cook from now on then, if you are such a consummate chef!  I would be happy to give up the job.~ + PCD6_114
    ++ ~Lucky I'm not the one who cooks, then.~ + PCD6_115
    ++ ~You can always go without food, if you want.~ + PCD6_114
  END

  IF ~~ PCD6_31
    SAY ~Extensive thinking.  Contemplation.  Listening to you.~
    ++ ~You mean you *do* listen to me?  Wow.  That's a relief.~ + PCD6_311
    ++ ~Well, it's a lovely change.  Keep it up.~ + PCD6_311
    ++ ~Eh.  I think I preferred the old 'stop fighting you are a horrible person', honestly.~ + PCD6_312
  END

  IF ~~ PCD6_32
    SAY ~Indeed we can, <CHARNAME>.  Indeed we can.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_111
    SAY ~Mostly because I enjoyed watching you struggle with the fire.  If you wish, I could cook, from now on.~ = ~But right now, we have a quest to be getting on with--places to go, people to see, right?  Well, lets get going.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_112
    SAY ~Hmm.  Are you telling me that you magically procured the mushroom, uh, 'soup' that we had the other night, and didn't spend all evening slavering over the fire trying to perfect it, because it tasted like boiled cabbage?~
    ++ ~Yes!  I do have magical abilities, you know.  I am a spawn of Bhaal.~ + PCD6_1121
    ++ ~Fine.  You win.  But you're cooking from now on!~ + PCD6_114
    ++ ~I hate you, forever and ever, and my hatred is pure.  I hope you die painfully and horribly, on a bed of boiled cabbage.~ + PCD6_1122
    ++ ~It did not taste like boiled cabbage!  It tasted like mushroom!  Mushroom, damn it!~ + PCD6_1123
  END

  IF ~~ PCD6_113
    SAY ~Perhaps, but somehow, I doubt it.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_114
    SAY ~I would be more than happy to cook, if you will let me.  Because as I remember, unless you magically procured the mushroom, uh, 'soup' that we had the other night, which tasted like boiled cabbage, by the way, your cooking is terrible.~
    ++ ~Yes!  I do have magical abilities, you know.  I am a spawn of Bhaal.~ + PCD6_1121
    ++ ~Fine.  You win.  But you *are* cooking from now on!~ + PCD6_1141
    ++ ~I hate you, forever and ever, and my hatred is pure.  I hope you die painfully and horribly, on a bed of boiled cabbage.~ + PCD6_1122
    ++ ~It did not taste like boiled cabbage!  It tasted like mushroom!  Mushroom, damn it!~ + PCD6_1123
  END

  IF ~~ PCD6_115
    SAY ~You have a point, there.  If you were, I'm sure we would all be long dead by now.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_221
    SAY ~You got me good, indeed.  Always next time, I suppose.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_222
    SAY ~Is there any point trying to argue?  (sigh)~
    IF ~~ EXIT
  END

  IF ~~ PCD6_311
    SAY ~I do listen to you, yes.  When it suits me, of course.  But for now, let us continue our journey--there is much to do, as I recall.  Fighting Bhaalspawn, for one.  Defeating them.  Keeping their heads as trophies, of course.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_312
    SAY ~Truly?  Well, I shall endeavour to a 'horrible person' to you in future, then.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_1121
    SAY ~I suppose so, yes.  But that does not account for the mess you caused, <CHARNAME>.  Surely a *Bhaalspawn* could have cleaned up?  Or perhaps not, in this case.  But for now, let us continue our journey--there is much to do, as I recall.  Fighting Bhaalspawn, for one.  Defeating them.  Keeping their heads as trophies, of course.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_1122
    SAY ~I know, <CHARNAME>.  I know.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_1123
    SAY ~Of course it did, <CHARNAME>.  Of course it did.~
    IF ~~ EXIT
  END

  IF ~~ PCD6_1141
    SAY ~As I said, I would be happy to.  But for now, let us continue our journey--there is much to do, as I recall.  Fighting Bhaalspawn, for one.  Defeating them.  Keeping their heads as trophies, of course.~
    IF ~~ EXIT
  END


// -------------------------------------
// Iylos Dislike Dialogue (1)
// -------------------------------------
  IF WEIGHT #-2 ~Global("LK#IylosDislikeTalks","GLOBAL",1) RealGlobalTimerExpired("LK#IylosDislikeTalksTimer","GLOBAL")~ PCDIS
    SAY ~Watch yourself, <CHARNAME>.  I don't trust you, and I will watch your every move until I find that you have proved yourself.  But till then, remember that I will be watching you--and I'm not afraid to take action if need be.~ [LK#I160]
    ++ ~What's that supposed to mean?!~ DO ~IncrementGlobal("LK#IylosDislikeTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosDislikeTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCDIS_1
    ++ ~I wouldn't be so cocky if I were you, Iylos--you don't know who you're dealing with here.  I am a Bhaalspawn.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosDislikeTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosDislikeTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCDIS_2
    ++ ~Whatever.  Look, I don't really care.~ DO ~IncrementGlobal("LK#IylosDislikeTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosDislikeTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCDIS_2
    ++ ~You're very welcome to leave if you want, Iylos.  You know I'm not going to commit some atrocity--or should, by now.~ DO ~IncrementGlobal("LK#IylosDislikeTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosDislikeTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCDIS_3
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
// Plot Dialogues (4)
// -------------------------------------
// Plot Dialogue 1
  IF WEIGHT #-2 ~Global("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ PocketPlane2
    SAY ~So this could be the last time we see this accursed place, couldn't it?~ [LK#I232] = ~I can't say I'm unhappy about it.~
    ++ ~Neither am I.  I'll be glad to get out of here, have this over with.  (sigh)~ DO ~IncrementGlobal("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ + PP2_1
    ++ ~I'll miss it...even if it isn't exactly the most beautiful place, it's been there for me when I need it.~ DO ~IncrementGlobal("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ + PP2_2
    ++ ~Unhappy?  I'm ecstatic!  I can't wait to see the back of it.  God, I wish I could destroy it now!~ DO ~IncrementGlobal("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ + PP2_3
    ++ ~You don't have to like it.  But it is a place of power, and for that, I respect it.  I created this plane, if certain people are to be believed; this is part of me.~ DO ~IncrementGlobal("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ + PP2_4
  END

  IF ~~ PP2_1
    SAY ~It has gone on for a while, hasn't it, since Saradush?  At least it will be over soon, I suppose.  It will be nice to be able to go where I may without unwanted restrictions hanging over my head.~
    IF ~~ EXIT
  END

  IF ~~ PP2_2
    SAY ~I suppose.  At least all this will be over soon, I suppose.  It will be nice to be able to go where I may without unwanted restrictions hanging over my head.~
    IF ~~ EXIT
  END

  IF ~~ PP2_3
    SAY ~Well, soon you will be able to, <CHARNAME>.  It will be over soon--all of it, I suppose.  It will be nice to be able to go where I may without unwanted restrictions hanging over my head.~
    IF ~~ EXIT
  END

  IF ~~ PP2_4
    SAY ~A part of you which has grown and become- more, I know.  But I will not miss it.~ = ~It will be over soon--all of it, I suppose.  It will be nice to be able to go where I may without unwanted restrictions hanging over my head.~
    IF ~~ EXIT
  END


// Plot Dialogue 3 (Floating)
  IF WEIGHT #-2 ~Global("LK#IylosLastBhaalspawnDialogue","GLOBAL",1)~ last
    SAY ~And so we come to the last of the Five which you have been so valiantly fighting against, <CHARNAME>.~ [LK#I165]
    ++ ~Balthazar, yes.~ DO ~IncrementGlobal("LK#IylosLastBhaalspawnDialogue","GLOBAL",1)~ + last_1
    ++ ~In a little while...need to rest first, recuperate.  That last dungeon just took it all out of me.  (sigh) Sometimes I wonder if I'm really cut out for this adventuring business...~ DO ~IncrementGlobal("LK#IylosLastBhaalspawnDialogue","GLOBAL",1)~ + last_1
    ++ ~I'd avoid killing him if I could.~ DO ~IncrementGlobal("LK#IylosLastBhaalspawnDialogue","GLOBAL",1) IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + last_1
  END

  IF ~~ last_1
    SAY ~I know Balthazar.  He would not fight you if he felt you could help his cause.~
    ++ ~Which is?~ + last_11
  END

  IF ~~ last_11
    SAY ~He does not want to resurrect Bhaal, as you may have suspected.  He wants to prevent it.~
    ++ ~Yes, I had gathered that much.  What else can you tell me?~ + last_111
    ++ ~Really?  I thought he was just like the others...well, what do you suggest we do?~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + last_111
    ++ ~Then I will be forced to kill him.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + last_112
  END

  IF ~~ last_111
    SAY ~He may not be averse to a...a truce, of sorts, perhaps.~ = ~I cannot guarantee it, but I think if we play our cards right we can stop him from doing something drastic, and persuade him to help our cause.~
    ++ ~Well--I bow before your superior intellect, Iylos; how do you propose we do that?~ + last_1111
    ++ ~Maybe...I'm not sure.~ + last_1112
    ++ ~A truce?  With a Bhaalspawn?  You have to be joking.~ + last_1113
  END

  IF ~~ last_112
    SAY ~You *want* to resurrect Bhaal?~
    ++ ~Of course.  As soon as I learned it was possible, I have striven towards it as much as I could.  And now the moment is at hand...I won't have some foolish monk stopping me from returning my father to his due glory!~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + last_1121
    ++ ~Heh, I was just joking, Iylos.  But what do you suggest?~ + last_111
  END

  IF ~~ last_1111
    SAY ~Perhaps by appealing to his better nature.  Last time I spoke to him, he did not seem particularly welcoming...I suppose we'll have to wait and see.~
    IF ~~ EXIT
  END

  IF ~~ last_1112
    SAY ~Last time I spoke to him, he did not seem particularly welcoming...I suppose we'll have to wait and see, if that is what you decide to do.  I would not discount Balthazar's help--he could be a powerful ally.~
    IF ~~ EXIT
  END

  IF ~~ last_1113
    SAY ~Perhaps we could appeal to his better nature.  Last time I spoke to him, he did not seem particularly welcoming, however...I suppose we'll have to wait and see.~
    IF ~~ EXIT
  END

  IF ~~ last_1121
    SAY ~Then you are doomed, <CHARNAME>.  If that is your intention--I will provide no aid to you.  Farewell, and I hope you realise the folly of your current course of action.~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END


// -------------------------------------
// Scenery Dialogues (3)
// -------------------------------------

// Pocket Plane
  IF WEIGHT #-2 ~Global("LK#IylosPP","GLOBAL",1)~ LK#Iylos_PocketPlane
    SAY ~I do not trust this place, <CHARNAME>.  It reeks of corruption and horror.  Can't you hear the screams in the background?  I don't know how you could stay here for long, yet alone sleep here...~ [LK#I163]
    ++ ~I don't.  I only come here when I absolutely need to, or are taken by the Solar.  I'd avoid it if I could.~ DO ~IncrementGlobal("LK#IylosPP","GLOBAL",1) IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~  + PP_1
    ++ ~It isn't so bad, really, once you get used to the gloom.~ DO ~IncrementGlobal("LK#IylosPP","GLOBAL",1)~ + PP_2
    ++ ~Oh, suck it UP, Iylos!  There's nothing wrong with the place.~ DO ~IncrementGlobal("LK#IylosPP","GLOBAL",1) IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + PP_3
    ++ ~I like it.  The screams are almost...enjoyable.  Tantalising, one could say.~ DO ~IncrementGlobal("LK#IylosPP","GLOBAL",1) IncrementGlobal("BLK#IylosHappiness","GLOBAL",-2)~ + PP_4
  END

  IF ~~ PP_1
    SAY ~I'm not surprised.~
    IF ~~ EXIT
  END

  IF ~~ PP_2
    SAY ~Somehow, I find that hard to believe.~
    IF ~~ EXIT
  END

  IF ~~ PP_3
    SAY ~So the darkness which pervades the air doesn't disturb you, the almost tangible death?~
    ++ ~Eh.  Not particularly.~ EXIT
    ++ ~...where?!  I haven't noticed it...~ + PP_31
    ++ ~Yes, it does.  But where else can I be sure I am safe, if not in a place of my own creation?~ + PP_31
  END

  IF ~~ PP_4
    SAY ~You disgust me, <CHARNAME>...you truly do.~
    IF ~~ EXIT
  END

  IF ~~ PP_31
    SAY ~The very stones feel wrong, the ground beneath my feet makes not a sound as I move over it.  Nothing good can come of this place, <CHARNAME>.~
    IF ~~ EXIT
  END


// Merceneries dead--Amkethran
  IF WEIGHT #-2 ~Global("LK#IylosSaemon","GLOBAL",1)~ LK#IylosMerceneriesDead
    SAY ~By the unpleasant expression on your face and the quickly pooling blood at your feet, <CHARNAME>, I deduce you've met this Saemon Havarian before.~ [LK#IBLN]
    ++ ~ Oh, yes.  He's a snivelling, pathetic excuse for a man, only interested in himself.  He's been helpful several times before, but it has always come at a drastic price.~ DO ~SetGlobal("LK#IylosSaemon","GLOBAL",2)~ + Saemon_1
    ++ ~Saemon?  Bastard.  Does anyone not know Saemon Havarian, the most damned, wanted rogue on the planet?!~ DO ~SetGlobal("LK#IylosSaemon","GLOBAL",2)~ + Saemon_2
    ++ ~Eh...I don't particularly care for him, but its just his way.  He can't help being the way he is, I suppose.~ DO ~SetGlobal("LK#IylosSaemon","GLOBAL",2)~ + Saemon_3
  END

  IF ~~ Saemon_1
    SAY ~I can imagine, if this situation is any example.  Some men are incorrigible...and unfortunately, I have a feeling we'll be seeing Saemon again.  According to the locals, he's become quite a fixture.~ = ~But then again, some say that they have seen Drow around the place, so I'm not sure how much salt one should take with it.  Possibly a bag or so.~
    IF ~~ EXIT
  END

  IF ~~ Saemon_2
    SAY ~I can imagine how much you dislike him, if this situation is any example.  Some men are incorrigible...and unfortunately, I have a feeling we'll be seeing Saemon again.  According to the locals, he's become quite a fixture.~ = ~But then again, some say that they have seen Drow around the place, so I'm not sure how much salt one should take with it.  Possibly a bag or so.~
    IF ~~ EXIT
  END

  IF ~~ Saemon_3
    SAY ~ If this situation is any example, he is totally incorrigible...and unfortunately, I have a feeling we'll be seeing Saemon again.  According to the locals, he's become quite a fixture.~ = ~But then again, some say that they have seen Drow around the place, so I'm not sure how much salt one should take with it.  Possibly a bag or so.~
    IF ~~ EXIT
  END
  

// Spectator Comment
  IF WEIGHT #-2 ~Global("LK#IylosBeholder","GLOBAL",1)~ LK#IylosBeholder
    SAY ~What an interesting Beholder.  I would have liked to learn more about him.  I had always thought such creatures were inherently evil.  Perhaps I was wrong.  Something to think on, at least.~ [LK#IBLN]
    ++ ~That was Spectator--we've met him a few times before.  Lovely chap, really, if a bit visible.~ DO ~IncrementGlobal("LK#IylosBeholder","GLOBAL",1)~ + Spectator_1
    ++ ~You don't like being wrong very much, do you Iylos?~ DO ~IncrementGlobal("LK#IylosBeholder","GLOBAL",1)~ + Spectator_2
    ++ ~I should have killed him the last time I had a chance.~ DO ~IncrementGlobal("LK#IylosBeholder","GLOBAL",1)~ + Spectator_1
  END

  IF ~~ Spectator_1
    SAY ~In the Underdark, I presume?  Ah...it must have been a fascinating experience.  Sendai will not wait for us, however--lu' ol's draeval whol ilta ulu el.~ = ~It's time for her to die.~
    IF ~~ EXIT
  END

  IF ~~ Spectator_2
    SAY ~Sendai will not wait for us,--lu' ol's draeval whol ilta ulu el.~ = ~It's time for her to die.~
    IF ~~ EXIT
  END
  
  

// -------------------------------------
// Scenery Interjections (2)
// -------------------------------------
// Scenery Interjection, Forest Area
  IF WEIGHT #-2 ~AreaCheck("AR6400") Global("LK#IylosTransport","GLOBAL",1)~ LK#IylosForestcomment
    SAY ~And so your pocket plane has transported us right into the middle of a group of enemy soliders--wonderful tactics, <CHARNAME>.  Perhaps you hoped the surprise would disable them or somesuch?~ [LK#IBLN] = ~Regardless, we must fight them now!~
    IF ~~ DO ~IncrementGlobal("LK#IylosTransport","GLOBAL",1)~ EXIT
  END

// Drow Enclave--Spiders
  IF WEIGHT #-2
    ~AreaCheck("AR6103") InParty(Myself) See(Player1) Global("LK#IylosSpiders","GLOBAL",1)~ LK#IylosDrowEnclaveSpiders
    SAY ~Ah...I had forgotten the peculiar obsession the Drow had with spiders.  Wonderful--we already have to fight through an army of Drow Priestesses, mercenaries and wizards, and now we have a colony of enormous poisonous spiders added to the mix.  Just wonderful.~ [LK#IBLN]
    IF ~~ DO ~IncrementGlobal("LK#IylosSpiders","GLOBAL",1)~ EXIT
  END

END

// -------------------------------------
// Saradush Interjections
// -------------------------------------

// Viekang
INTERJECT_COPY_TRANS SARVIE01 6 LK#IylosViekang
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~It would almost seem as though she is trying to keep you here...but why would she do that?~
END

// Peltje
INTERJECT_COPY_TRANS SARPEL01 6 LK#IylosPeltje
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~How unusual...perhaps we should investigate, <CHARNAME>.  As I remember, the prison is boarded up--perhaps this was the reason.~
END

// Male Courtesan
INTERJECT_COPY_TRANS SARPROVM 4 LK#IylosCourtesan
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") Gender(Player1,MALE) !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I didn't know you were of that persuasion...Perhaps I should pay more attention.~
END


// -------------------------------------
// Forest of Mir Interjections
// -------------------------------------
// Skeleton Cleric
INTERJECT_COPY_TRANS HGSKL01 1 LK#IylosSkeletonCleric
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Bhaal?!  Skeleton, you call this Bhaalspawn an abomination, and yet you are that much worse!  Whatever connection you have to Bhaal, consider it now severed!~
  == HGSKL01 ~Prepare for your doom, vessel!  Spare none!  Bhaal will return!~
END


// -------------------------------------
// Sendai's Enclave
// -------------------------------------
// Diaytha
INTERJECT SENPRI 3 LK#IylosDiaytha
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Ka dos daewl, Yathrin.  Usstan orn'la kre'j ulu z'haan ka Usstan zhahen dos--whol zhaunyl udos zhal elgg dos!~
  == SENPRI ~Hah, Usstan tlun l' Detholusin d' Sendai, wael--Usstan orn elgg dos lu' dosst yeunn Bhaalspawn!  Enter if you dare.~
COPY_TRANS SENPRI 3


// -------------------------------------
// Abazigal's Stronghold
// -------------------------------------
// Bondari
I_C_T BAZPAT01 7 LK#IylosBondari
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Such youthful enthusiasm must be good for something--a well-chosen course of action, <CHARNAME>.  A little deceptive, perhaps, but...~
END

// -------------------------------------
// Throne of Bhaal
// -------------------------------------
// God Advice
INTERJECT_COPY_TRANS FINSOL01 27 LK#IylosFinSol
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~I must advise against this, <CHARNAME>.  Power does things to people, such as Amelissan here.  I am begging you...do not do this.  Don't become another Amelissan, or Irenicus, or Bodhi.~ = ~Stay mortal, keep your wits about you.  Consider this decision carefully.  Weigh *everything* up before you decide.~
END


// -------------------------------------
// Player Initiated Dialogue
// -------------------------------------
// PID 1--Cease
// PID 2--Balthazar (2 versions)
// PID 3--Amkethran (2 versions)
// PID 4--Anauroch
// PID 5--Drow
// PID 6--Nyalee
// PID 7--Teach Me Drow
// PID 8--Relationship

APPEND ~LK#IYLJ~

  // Clicky-click
  IF ~IsGabber(Player1) CombatCounter(0)~ Player_Initiated_Dialogues
    SAY ~ (Iylos glances at you momentarily, before returning his eyes to the ground before you.)~ [LK#IBLN]
    ++ ~(Flirt with Iylos)~ DO ~IncrementGlobal("LK#IylosFlirtedWithTimes","GLOBAL",1)~ + flirts
    ++ ~(Talk to Iylos)~ DO ~IncrementGlobal("LK#IylosTalkedToTimes","GLOBAL",1)~ + question
    ++ ~Iylos, could you stop talking to me so often?  Your voice can get a little...irritating at times.~ + donttalk
    ++ ~Iylos, I have to ask you to leave the party.~ + leavetheparty
    ++ ~Ah, nothing.  (Leave Iylos alone)~ EXIT
  END

  IF ~~ donttalk
    SAY ~As you wish.~
    IF ~~ DO ~SetGlobal("LK#IylosTalksLessOften","GLOBAL",1)~ EXIT
  END

  IF ~~ leavetheparty
    SAY ~Are you sure, <CHARNAME>?~
    ++ ~Quite.~ + quite
    ++ ~Actually, stay in the party, please.~ + stay
  END

  IF ~~ quite
    SAY ~If I must--but know that you will be watched.  Goodbye, <CHARNAME>--perhaps we shall see each other again sometime.~
    IF ~~ DO ~SetGlobal("LK#IylosJoinedParty","GLOBAL",0) LeaveParty() SetGlobal("LK#IylosLeftGood","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ stay
    SAY ~As you wish.~
    IF ~~ EXIT
  END

  IF ~~ flirts
    SAY ~(You take in Iylos' broad shoulders and blue eyes as he walks beside you comfortably, hands at his side.)~
    + ~RandomNum(2,1)~ + ~(Observe Iylos)~ + observe1
    + ~RandomNum(2,2)~ + ~(Observe Iylos)~ + observe2
    + ~RandomNum(2,1)~ + ~(Walk up behind Iylos and whisper unintelligibly into his ear)~ + whisper1
    + ~RandomNum(2,2)~ + ~(Walk up behind Iylos and whisper unintelligibly into his ear)~ + whisper2
    ++ ~(Watch Iylos train)~ + train1
    + ~RandomNum(2,1)~ + ~(Watch Iylos meditate)~ + meditate1
    + ~RandomNum(2,2)~ + ~(Watch Iylos meditate)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + meditate2
    + ~RandomNum(2,1)~ + ~(Stroke Iylos' arm)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + arm1
    + ~RandomNum(2,2)~ + ~(Stroke Iylos' arm)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + arm2
    + ~RandomNum(2,1)~ + ~(Smile at Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + smile1
    + ~RandomNum(2,2)~ + ~(Smile at Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + smile2
    + ~RandomNum(2,1)~ + ~(Poke Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + poke1
    + ~RandomNum(2,2)~ + ~(Poke Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + poke2
    + ~RandomNum(2,1)~ + ~(Whack Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + whack1
    + ~RandomNum(2,2)~ + ~(Whack Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + whack2
    + ~RandomNum(2,1)~ + ~(Blow in Iylos' ear)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + ear1
    + ~RandomNum(2,2)~ + ~(Blow in Iylos' ear)~ + ear2
    + ~Global("LK#IylosApologise","GLOBAL",1)~ + ~Iylos, I'd like to apologise for annoying you earlier...I hope you don't mind, sometimes I just feel a little playful.~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",0)~ + apologise
    + ~RandomNum(2,1)~ + ~You should smile more often, Iylos.  It suits you.~ + yousmile1
    + ~RandomNum(2,2)~ + ~You should smile more often, Iylos.  It suits you.~ + yousmile2
    ++ ~(Leave Iylos alone)~ EXIT
  END

  IF ~~ question
    SAY ~(Iylos looks at you briefly.) What is it you want, <CHARNAME>?~
    + ~RandomNum(3,1) Global("LK#IylosClasses","GLOBAL",0)~                                                                                 + ~Do you agree with the idea of upper and lower classes, Iylos?~ DO ~SetGlobal("LK#IylosClasses","GLOBAL",1)~                                                                        + classes
    + ~RandomNum(3,2) Global("LK#IylosGate","GLOBAL",0)~                                                                                    + ~Have you ever been to Baldur's Gate?~ DO ~SetGlobal("LK#IylosClasses","GLOBAL",1)~                                                                        + gate
    + ~Global("LK#IylosCeaseDialogue","GLOBAL",0)~                                                                                          + ~Iylos, must you *always* be watching me as would a hawk, waiting for my next move?  I'm not about to erupt into violence, or murder all within my sight, you know.~ DO ~SetGlobal("LK#IylosCeaseDialogue","GLOBAL",1)~                                                                  + PID_Cease
    + ~Global("MetBal","GLOBAL",1) Global("LK#IylosKnowsBalthDialogue","GLOBAL",0)~                                                         + ~Ah...so *that* was Balthazar.  Charming fellow.~ DO ~SetGlobal("LK#IylosKnowsBalthDialogue","GLOBAL",1)~                                                             + PID_KnowsBalth
    + ~Global("MetBal","GLOBAL",0) Global("LK#IylosDoesn’tKnowBalthDialogue","GLOBAL",0)~                                                   + ~Who is this Balthazar you mentioned a while back, Iylos?~ DO ~SetGlobal("LK#IylosDoesn’tKnowBalthDialogue","GLOBAL",1)~                                                       + PID_WhoisBalth
    + ~RandomNum(3,3) Global("LK#IylosPastries","GLOBAL",0)~                                                                                + ~Do you enjoy pastries?~ DO ~SetGlobal("LK#IylosPastries","GLOBAL",1)~                                                                       + pastries
    + ~RandomNum(3,1) Global("LK#IylosDrink","GLOBAL",0)~                                                                                   + ~What do you like to drink?  Do you like to drink alcohol?~ DO ~SetGlobal("LK#IylosDrink","GLOBAL",1)~                                                                          + drink
    + ~RandomNum(3,2) Global("LK#IylosAnimal","GLOBAL",0)~                                                                                  + ~What is your favourite animal, Iylos?~ DO ~SetGlobal("LK#IylosAnimal","GLOBAL",1)~                                                                         + animal
    + ~RandomNum(3,1) Global("LK#IylosPaladins","GLOBAL",0)~                                                                                 + ~What do you think of paladins?~ DO ~SetGlobal("LK#IylosPaladins","GLOBAL",1)~                                                                        + paladins
    + ~RandomNum(3,2) Global("LK#IylosDruids","GLOBAL",0)~                                                                                 + ~What do you think of druids?~ DO ~SetGlobal("LK#IylosDruids","GLOBAL",1)~                                                                        + druids
    + ~RandomNum(3,3) Global("LK#IylosBards","GLOBAL",0)~                                                                                 + ~What is your opinion on bards?~ DO ~SetGlobal("LK#IylosBards","GLOBAL",1)~                                                                        + bards
    + ~RandomNum(3,1) Global("LK#IylosBerserkers","GLOBAL",0)~                                                                                 + ~What do you think of berserker warriors?~ DO ~SetGlobal("LK#IylosBerserkers","GLOBAL",1)~                                                                        + berserkers
    + ~RandomNum(3,2) Global("LK#IylosMagic","GLOBAL",0)~                                                                                 + ~How do you feel about magic?~ DO ~SetGlobal("LK#IylosMagic","GLOBAL",1)~                                                                        + magic
    + ~RandomNum(3,3) Global("LK#IylosMinsc","GLOBAL",0) InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~                                                                                 + ~How do you feel about Minsc?~ DO ~SetGlobal("LK#IylosMinsc","GLOBAL",1)~                                                                        + minsc
    + ~RandomNum(2,1) Global("LK#IylosThievery","GLOBAL",0)~                                                                                 + ~What do you think of thievery?~ DO ~SetGlobal("LK#IylosThievery","GLOBAL",1)~                                                                        + thievery
    + ~GlobalGT("LK#IylosViconia","GLOBAL",2) Global("LK#IylosDrowDialogue","GLOBAL",0)~                                                    + ~Iylos, I heard you speaking with Viconia a while ago--in drow.  How is it that you know the language of the dark elves so well?~ DO ~SetGlobal("LK#IylosDrowDialogue","GLOBAL",1)~                                                                   + PID_Drow
    + ~RandomNum(3,3) Global("LK#IylosTattoos","GLOBAL",0)~                                                                                 + ~How did you get your tattoos?~ DO ~SetGlobal("LK#IylosTattoos","GLOBAL",1)~                                                                        + tattoos
    + ~RandomNum(3,1) Global("LK#IylosKill","GLOBAL",0)~                                                                                    + ~What does it feel like when you kill another, Iylos?~ DO ~SetGlobal("LK#IylosKill","GLOBAL",1)~                                                                           + kill
    + ~RandomNum(3,2) Global("LK#IylosHair","GLOBAL",0)~                                                                                    + ~Does my hair look alright?~ DO ~SetGlobal("LK#IylosHair","GLOBAL",1)~                                                                           + hair
    + ~Global("LK#IylosMeditateAgain","GLOBAL",1) Global("LK#IylosMeditateAgainDialogue","GLOBAL",0)~                                       + ~Can we meditate again sometime?~ DO ~SetGlobal("LK#IylosMeditateAgainDialogue","GLOBAL",1)~                                                          + PID_Med
    + ~RandomNum(3,3) Global("LK#IylosFlower","GLOBAL",0)~                                                                                  + ~Iylos, what's your favourite flower?~ DO ~SetGlobal("LK#IylosFlower","GLOBAL",1)~                                                                         + flower
    + ~RandomNum(3,1) Global("LK#IylosTreat","GLOBAL",0)~                                                                                   + ~Did you have a favourite treat as a child, Iylos?~ DO ~SetGlobal("LK#IylosTreat","GLOBAL",1)~                                                                          + treat
    + ~RandomNum(3,2) Global("LK#IylosDale","GLOBAL",0)~                                                                                    + ~Have you been to the Dales?~ DO ~SetGlobal("LK#IylosDale","GLOBAL",1)~                                                                           + dale
    + ~Global("LK#IylosProudOfBeingBhaalspawn","GLOBAL",1) Global("LK#IylosProudOfBeingBhaalspawnDialogue","GLOBAL",0)~                     + ~I am not proud of being a Bhaalspawn, Iylos.  You should know that.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) SetGlobal("LK#IylosProudOfBeingBhaalspawnDialogue","GLOBAL",1)~ + PID_Bhaal
    + ~RandomNum(3,3) Global("LK#IylosColour","GLOBAL",0)~                                                                                  + ~What is your favourite colour?~ DO ~SetGlobal("LK#IylosColour","GLOBAL",1)~                                                                         + colour
    + ~RandomNum(3,1) Global("LK#IylosScent","GLOBAL",0)~                                                                                   + ~Do you have a favourite scent?~ DO ~SetGlobal("LK#IylosScent","GLOBAL",1)~                                                                          + scent
    + ~Global("LK#IylosDrowDialogue","GLOBAL",1) Global("LK#IylosTeachMeDrow","GLOBAL",0) GlobalGT("LK#IylosHappiness","GLOBAL",5)~         + ~Could you teach me a little Drow, Iylos?  I've always been interested in their culture, and would love to learn some of their language--if you wouldn't mind teaching me, of course.~ DO ~SetGlobal("LK#IylosTeachMeDrow","GLOBAL",1) IncrementGlobal("LK#IylosTeachMeDrowCounter","GLOBAL",1)~           + PID_TeachDrow
    + ~Global("LK#IylosTeachMeDrow","GLOBAL",1) GlobalGT("LK#IylosHappiness","GLOBAL",5) GlobalLT("LK#IylosTeachMeDrowCounter","GLOBAL",6)~ + ~Could you teach me another Drow word, or remind me of one of the Drow phrases you've taught me, Iylos?~ DO ~IncrementGlobal("LK#IylosTeachMeDrowCounter","GLOBAL",1)~                                                       + PID_RemindDrow
    + ~Global("LK#IylosTeachMeDrow","GLOBAL",1) GlobalGT("LK#IylosHappiness","GLOBAL",5) GlobalGT("LK#IylosTeachMeDrowCounter","GLOBAL",5)~ + ~Could you teach me another Drow word, or remind me of one of the Drow phrases you've taught me, Iylos?~                                                                                                                     + PID_DrowDone
    + ~RandomNum(3,2) Global("LK#IylosVolo","GLOBAL",0)~                                                                                    + ~What do you think of Volothamp Geddarm's writing?~ DO ~SetGlobal("LK#IylosVolo","GLOBAL",1)~                                                                           + volo
    + ~GlobalLT("LK#IylosHappiness","GLOBAL",10) Global("LK#IylosAmkethranDialogue","GLOBAL",0)~                                            + ~So you're from Amkethran, Iylos?~ DO ~SetGlobal("LK#IylosAmkethranDialogue", "GLOBAL",1)~                                                             + PID_Amk
    + ~GlobalGT("LK#IylosHappiness","GLOBAL",9) Global("LK#IylosAmkethranDialogue","GLOBAL",0)~                                             + ~So you're from Amkethran, Iylos?~ DO ~SetGlobal("LK#IylosAmkethranDialogue","GLOBAL",1)~                                                              + PID_Amk2
    + ~RandomNum(3,3) Global("LK#IylosKnownBalth","GLOBAL",0) Global("MetBal","GLOBAL",1)~                                                  + ~How long have you known Balthazar?~ DO ~SetGlobal("LK#IylosKnownBalth","GLOBAL",1)~                                                                     + knownbalth
    + ~Global("LK#Nyaleecomment","GLOBAL",1) Global("LK#IylosNyaleeDialogue","GLOBAL",0)~                                                   + ~Iylos, how did you know Nyalee?  I thought you spent your time in the desert, rather than consorting with crazy old women?~ DO ~SetGlobal("LK#IylosNyaleeDialogue","GLOBAL",1)~                                                                 + PID_Nyalee
    + ~RandomNum(3,1) Global("LK#IylosSelfHate","GLOBAL",0)~                                                                                + ~Do you hate yourself for killing others?~ DO ~SetGlobal("LK#IylosSelfHate","GLOBAL",1)~                                                                       + selfhate
    + ~RandomNum(3,2) Global("LK#IylosSunsets","GLOBAL",0)~                                                                                 + ~Do you enjoy sunsets?~ DO ~SetGlobal("LK#IylosSunsets","GLOBAL",1)~                                                                        + sunsets
    + ~Global("LK#IylosAngryWithPC","GLOBAL",1) Global("LK#IylosAngryWithPCDialogue","GLOBAL",0)~                                           + ~Look, I'm sorry about what I said earlier, Iylos--everything has just been so hard lately, and I tend to snap when I'm stressed...it isn't your fault.  I'm sorry.~ DO ~SetGlobal("LK#IylosAngryWithPCDialogue","GLOBAL",1)~                                                            + PID_Sorry
    + ~RandomNum(3,3) Global("LK#IylosCMoreTattoos","GLOBAL",0)~                                                                            + ~Have you got any other tattoos?~ DO ~SetGlobal("LK#IylosCMoreTattoos","GLOBAL",1)~                                                                   + moretattoos
    + ~RandomNum(3,1) Global("LK#IylosParents","GLOBAL",0)~                                                                                 + ~Do you regret not having parents?~ DO ~SetGlobal("LK#IylosParents","GLOBAL",1)~                                                                        + parents
    + ~RandomNum(3,2) Global("LK#IylosDesert","GLOBAL",0)~                                                                                  + ~In the desert, where did you sleep at night?  Doesn't it get really cold?~ DO ~SetGlobal("LK#IylosDesert","GLOBAL",1)~                                                                         + desert
    + ~Global("LK#IylosAnaurochDialogue","GLOBAL",0)~                                                                                       + ~Why do you consider the Anauroch desert to be your spiritual home, Iylos?  It's a barren wasteland!~ DO ~SetGlobal("LK#IylosAnaurochDialogue","GLOBAL",1)~                                                               + PID_Anau
    + ~RandomNum(3,3) Global("LK#IylosNeverwinter","GLOBAL",0)~                                                                             + ~Have you been to Neverwinter?~ DO ~SetGlobal("LK#IylosNeverwinter","GLOBAL",1)~                                                                    + neverwinter
    + ~RandomNum(2,1) Global("LK#IylosNightDay","GLOBAL",0)~                                                                                + ~Which do you prefer--night, or day?~ DO ~SetGlobal("LK#IylosNightDay","GLOBAL",1)~                                                                       + nightday
    + ~Global("MetBal","GLOBAL",1) Global("LK#IylosBalthPID","GLOBAL",0)~                                                                   + ~Thanks for continuing to travel with me, Iylos.  I really appreciate it.~ DO ~SetGlobal("LK#IylosBalthPID","GLOBAL",1)~                                                                                                                + Appreciate
    + ~Global("LK#IylosHerbalLore","GLOBAL",0)~                                                                                             + ~Do you know any herbal lore, Iylos?~ DO ~SetGlobal("LK#IylosHerbalLore","GLOBAL",1)~                                                                     + HerbalLore
    + ~Global("LK#IylosLeilaPID","GLOBAL",0) Global("LK#IylosLeila","GLOBAL",2)~                                                            + ~Who was that Leila woman in the Amkethran Inn, Iylos?~ DO ~SetGlobal("LK#IylosLeilaPID","GLOBAL",1)~                                                                       + Leila
    + ~Global("LK#IylosRelationship","GLOBAL",0) GlobalGT("LK#IylosHappiness","GLOBAL",7)~                                                  + ~Have you ever been in a relationship, Iylos?~ DO ~SetGlobal("LK#IylosRelationship","GLOBAL",1)~                                                                  + Relationship
    + ~Global("LK#IylosRelationship","GLOBAL",0) GlobalLT("LK#IylosHappiness","GLOBAL",8)~                                                  + ~Have you ever been in a relationship, Iylos?~ DO ~SetGlobal("LK#IylosRelationship","GLOBAL",1)~                                                                  + Relationship2
    + ~Global("LK#IylosBitter","GLOBAL",0)~                                                                                                 + ~Why are you so bitter, Iylos?~ DO ~SetGlobal("LK#IylosBitter","GLOBAL",1)~                                                                         + Bitter
    + ~Global("LK#IylosNight","GLOBAL",0)~                                                                                                  + ~I like the night.  It's so...comforting.  What do you think of the night, Iylos?~ DO ~SetGlobal("LK#IylosNight","GLOBAL",1)~                                                                          + Night
    + ~GlobalGT("LK#IylosHappiness","GLOBAL",5)~                                                                                            + ~What do you consider me, Iylos?  A friend?~                                                                                                                     + Consider
    + ~GlobalLT("LK#IylosHappiness","GLOBAL",6)~                                                                                            + ~What do you consider me, Iylos?  A friend?~                                                                                                                     + Consider2
    + ~Global("LK#IylosNext","GLOBAL",0)~                                                                                                   + ~What are you planning to do when this is all over, Iylos?~ DO ~SetGlobal("LK#IylosNext","GLOBAL",1)~                                                                           + WhatsNextForIylos
    + ~Global("LK#IylosHair","GLOBAL",0)~                                                                                                   + ~Have you ever thought about growing your hair, Iylos?~ DO ~SetGlobal("LK#IylosHair","GLOBAL",1)~                                                                           + GrowingHair
    + ~RandomNum(2,2) Global("LK#IylosMonk","GLOBAL",0)~                                                                                    + ~Why did you choose to become a monk?~ DO ~SetGlobal("LK#IylosMonk","GLOBAL",1)~                                                                           + monk
    + ~AreaCheck("AR4500") Global("LK#IylosPocketPlaneNervousDialogue","GLOBAL",0)~                                                         + ~Why're you so tense, Iylos?  You're perfectly safe here in the Pocket Plane, as I have said...~ DO ~SetGlobal("LK#IylosPocketPlaneNervousDialogue","GLOBAL",1)~                                                     + PID_PPlane
    + ~RandomNum(3,1) Global("LK#IylosTease1","GLOBAL",0)~                                                                                  + ~I have to admit, I've always wondered what it would be like to be bald.~ DO ~SetGlobal("LK#IylosTease1","GLOBAL",1)~                                                          + tease1
    + ~RandomNum(3,2) Global("LK#IylosTease2","GLOBAL",0)~                                                                                  + ~Isn't it difficult to keep your balance with such a big head?~ DO ~SetGlobal("LK#IylosTease2","GLOBAL",1)~                                                          + tease2
    + ~RandomNum(3,3) Global("LK#IylosTease3","GLOBAL",0)~                                                                                  + ~Iylos.  All this masculinity, pride and arrogance.  Are you compensating for something, perhaps?~ DO ~SetGlobal("LK#IylosTease3","GLOBAL",1)~                                                          + tease3
    + ~Global("LK#IylosSituation","GLOBAL",0)~                                                                                              + ~What do you think of our situation, Iylos?  Melissan, the Five?~ DO ~SetGlobal("LK#IylosSituation","GLOBAL",1)~                                                          + situation

    ++ ~Ah, nothing.  (Leave Iylos alone)~ EXIT
  END


  // Flirts
  IF ~~ observe1
    SAY ~(You turn your gaze to the monk, his powerfully muscled back and arms obvious underneath his robe.  His gait is confident and wary.  The patterns on his head are covered in a slight stubble--he must have forgotten to shave this morning.)~ = ~(He turns around to face you for a moment, his eyes unreadable, before returning to his constant vigil of your surroundings.  You can't help but notice his slight smile.)~
    IF ~~ EXIT
  END

  IF ~~ observe2
    SAY ~(Surreptitiously you turn to observe Iylos, who is as usual lost in thought, his eyes scanning the horizon for danger or perhaps something else.  His deep, usually clear blue eyes are clouded slightly, and his face looks downcast.)~
    ++ ~Are you alright, Iylos?~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + observe2_1
    ++ ~What're you so dark about, Iylos?~ + observe2_2
    ++ ~(Leave him alone)~ EXIT
  END

  IF ~~ observe2_1
    SAY ~I'm...fine.  Contemplating what the future holds.  There is so much ahead of you--us.  Much danger, and many foes.  Let us hope we survive.~
    IF ~~ EXIT
  END

  IF ~~ observe2_2
    SAY ~I'm contemplating what dark secrets our future may hold.  There is much ahead of you--us.  Much danger, and many foes.  Let us hope we survive.~
    IF ~~ EXIT
  END

  IF ~~ train1
    SAY ~(Iylos' slow movements are fluid and graceful, yet there is an element of inevitability and power withheld beneath his simple seeming gestures.  His eyes are open, thoughtless and still as he balances upon one foot, the other held in lotus position just below his waist.)~ = ~(His arms perform a series of sweeping gestures, finally concluding in a prayerlike position on his chest.  After a moment, he notices your stare and blinks at you.)~ = ~This is the flying horse, <CHARNAME>.  It is one of the simplest movements in yoga--it is said to be the epitomy of grace.~
    IF ~~ EXIT
  END


  IF ~~ meditate1
    SAY ~(You notice Iylos' breathing slow as he closes his eyes, still walking.  He seems aware of his surroundings, and yet does not acknowledge them as he moves.  He is murmuring a chant of some kind which you can't quite make out, but sounds strangely foreign and alluring.)~ = ~(His expression is very peaceful and serene, and his manner slightly detached.  After several more moments he opens his eyes and although his breathing is once more normal, the aura of calm surrounding him remains.)~
    IF ~~ EXIT
  END

  IF ~~ meditate2
    SAY ~Do you mind, <CHARNAME>?  I'm not sure you realise how hard it is to meditate when another is watching you.~
    IF ~~ EXIT
  END


  IF ~~ arm1
    SAY ~(You increase your stride to match that of the monk, and within a few moments you are right beside him.  With a casual motion you reach out to touch his arm, and slowly move downwards to his wrist.  He glances at you briefly, a glare hidden beneath his usual mask, and detaches your hand.)~ = ~Do you mind, <CHARNAME>?!  I'm trying to think.  Leave me alone.~
    IF ~~ EXIT
  END

  IF ~~ arm2
    SAY ~(You carefully stroke Iylos' arm, his cool skin smooth beneath your fingers.  The tips of his ears redden ever so slightly, and he withdraws his arm.)~ = ~<CHARNAME>, what are you doing?~
    ++ ~Flirting with you.  What does it look like?~ + arm2_1
    ++ ~Nothing.~ + arm2_2
    ++ ~You needn't be so tense.  I wasn't attacking you, and there are no foes about.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + arm2_3
  END

  IF ~~ arm2_1
    SAY ~I would appreciate it if you did not do it again.~
    IF ~~ EXIT
  END

  IF ~~ arm2_2
    SAY ~(Iylos looks at you suspiciously, before turning away.) If you say so.~
    IF ~~ EXIT
  END

  IF ~~ arm2_3
    SAY ~There is a reason I am tense, <CHARNAME>, and it has nothing to do with enemies.  Do not think that you can win me over with 'innocent' touches or compliments--I am not so easily won.~
    IF ~~ EXIT
  END


  IF ~~ smile1
    SAY ~(Iylos glances at you, his blue eyes alighting upon your friendly smile.  His eyes narrow briefly before turning back to the road, his eyes resolutely upon the ground in front of him.)~
    IF ~~ EXIT
  END

  IF ~~ smile2
    SAY ~(You smile at Iylos, but his gaze slides off you as water from a duck.  At first it seems he did not even notice, but after a moment it becomes evident that he is smiling faintly in return, even if he is busying himself with adjusting his robe.)~
    IF ~~ EXIT
  END

  IF ~~ yousmile1
    SAY ~Why would I smile, <CHARNAME>, when there are hundreds dying even as we speak?  Perhaps you should concern yourself with the more pressing issues at hand, such as where you're intending for us to sleep tonight and how you will end this damned war.~
    IF ~~ EXIT
  END

  IF ~~ yousmile2
    SAY ~If you wish, <CHARNAME>, but I don't see how a smile could help anything--world hunger, for example.  *Surely* your time would be better spent preparing for battle?~
    ++ ~I wasn't suggesting a smile would solve anything, but sometimes it can light up the day even when all seems hopeless.  I'd suggest trying it sometime.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~You never know if you don't try!~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Perhaps, but you have such a handsome smile.  I'd like to see it more often.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ EXIT
  END

  IF ~~ poke1
    SAY ~(You creep up behind Iylos and poke his stomach; you can feel his taut muscles underneath your fingertip.  In a flash, you find yourself on the ground, your arm sore and aching.)~ = ~Care to try that again, <CHARNAME>?  Hmph.~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ poke2
    SAY ~(You poke Iylos in the back and leap back, quickly looking in the opposite direction, an innocent smile upon your face.)~ = ~(Iylos sighs and turns around to face you.) Was there something, <CHARNAME>?~
    ++ ~No, nothing.~ + poke2_1
    ++ ~Yes, actually.  What're you thinking about?~ + poke2_2
    ++ ~You're so boring!  Why can't you have a little fun once in a while?!  (Pout at him)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + poke2_3
  END

  IF ~~ poke2_1
    SAY ~Good.~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ poke2_2
    SAY ~Why birds have such an unerring sense of direction and inherent knowledge of when and where danger will strike.  Have you ever noticed, in a storm, the birds will always fly in the opposite direction, even if the storm is nowhere to be seen by your eyes?~
    ++ ~I had noticed that, yes.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + poke2_21
    ++ ~No, actually, I hadn't...but now that I think about it, you're quite right.  Birds are some of the most amazing creatures.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + poke2_21
    ++ ~Bollocks!~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + poke2_22
  END

  IF ~~ poke2_3
    SAY ~I do have fun when I have the time, <CHARNAME>, but we have this little war on our hands at the moment, if you hadn't noticed.  Perhaps you should attend to it rather than poking me at random moments.~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ poke2_21
    SAY ~Such unusual traits must surely be magical.  But let's return to the road--not getting anywhere with idle chatter, are we?  (He turns away from you abruptly.)~
    IF ~~ EXIT
  END

  IF ~~ poke2_22
    SAY ~If you believe so--I think that such unusual traits must surely be magical.  But we're not getting anywhere with idle chatter, are we?  (He turns away from you abruptly.)~
    IF ~~ EXIT
  END

  IF ~~ whack1
    SAY ~(You sharply jab Iylos in the back, and blink as you find your wrist quickly encircled by his hand.)~ = ~<CHARNAME>, what *are* you trying to do?~
    ++ ~Get close to you, of course, so I can jab you in the back.  Exactly what I just did, actually.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + whack1_1
    ++ ~Nothing--'twas a mistake, I assure you.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + whack1_1
    ++ ~Whack you!  (Poke him with your free hand)~ + whack1_2
    ++ ~(Attempt to pull free)~ + whack1_3
  END

  IF ~~ whack1_1
    SAY ~I see.  (Iylos lets go of your wrist, his own falling limp by his side.)~ = ~Do not do it again.~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ whack1_2
    SAY ~(Iylos glares at you, irritated.) I see.~ = ~(He lets go of your wrist, his own falling limp by his side.  He looks pointedly at your other hand, paused in the action of poking him.) Do not do it again.~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ whack1_3
    SAY ~(Iylos glares at you, irritated, for a moment.)~ = ~(He lets go of your wrist, his own falling limp by his side.  He looks pointedly at your other hand, paused in the action of poking him.) Do not do it again.~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ whack2
    SAY ~(You expertly cuff Iylos over the back of the head, lightly enough so it doesn't hurt but hard enough to incite a reaction.  Iylos turns around, arms folded on his chest, his face an icy mask of dislike.)~ = ~What part of 'leave me alone' do you not understand, Bhaalspawn?!  I am quite well off without your incessant bothering.  Hmph.  (Iylos continues glaring at you for a moment before striding away stiffly.)~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ whisper1
    SAY ~(Carefully, you sneak up behind Iylos and within the space of a moment you step up to his back, almost every part of you touching.  He stands rigidly, shocked.  You lean forward and mumble into his ear, barely making any sound as your lips brush his ear.)~ = ~(You feel him shiver, though he does not move for several moments.)~ = ~(Suddenly, he turns around, his eyes blazing, his mouth a thin line of anger.)~ = ~Touch me again, <CHARNAME>, and I will be gone before you can utter a word.  (He stalks away furiously, and refuses to talk to you for some time.)~
    IF ~~ EXIT
  END

  IF ~~ whisper2
    SAY ~(You lean forward and whisper nonsense into Iylos' ear, barely containing your suppressed laughter.  He moves backward slightly, til you're almost touching, and turns around.)~ = ~You are a fool, <CHARNAME>, if you think you can alter how I feel about you and your *gifts* by courting me.  Leave me alone, and do not attempt to do so again!~
    IF ~~ EXIT
  END

  IF ~~ ear1
    SAY ~(Without a moment's hesitation you lean over and blow fiercely into Iylos' ear.  The man in question blinks owlishly for a moment, as though he could not believe what had just happened, and walks away shaking his head.)~
    IF ~~ EXIT
  END

  IF ~~ ear2
    SAY ~(You sidle up to Iylos on the pretense of making conversation and lean over, supposedly to tell him something important.  Instead of words what issues forth from your mouth is a burst of wind, which travels right to Iylos' ear.  He jumps, surprised, and shakes his head as if to empty it of something.)~ = ~(He gives you a look of long-suffering tiredness, and suddenly you find your ear filled with wet finger.)~
    ++ ~(Scream and jump backwards)~ + ear2_1
    ++ ~(Grab his hand and pull it away from your head, tutting.) Iylos, really.  Can't you do better than that?~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + ear2_2
    ++ ~Argh!  Ugh, Iylos, that's disgusting!!~ + ear2_2
  END

  IF ~~ ear2_1
    SAY ~(Iylos smirks at you.) Just don't do that again, <CHARNAME>, or I will do a lot worse.  I give as good as I get, when the mood strikes me.  (He turns away, but not before giving you another long-suffering look and hints of a glare.)~
    IF ~~ EXIT
  END

  IF ~~ ear2_2
    SAY ~Of course.  I was just looking for something just as childish and immature as what you just did to counter.  I *do* give as good as I get, when the mood strikes me.  (He turns away, but not before giving you another long-suffering look and hints of a glare.)~
    IF ~~ EXIT
  END

  IF ~~ apologise
    SAY ~I suppose that is alright.  Just...don't continue bothering me.  I have better things to do than watch you play games.~
    IF ~~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ EXIT
  END

  // Questions
  IF ~~ classes
    SAY ~No, I do not.  I think the separation of peoples is useless, and only serves to cause discontent with those who are poorer or less well-off.  But then again, if all were suddenly to become equal, there would always be those who sought to tip the balance of power to their favour.~  = ~I think whatever we do, there will always be those who are more successful businessmen, more successful artists, more successful fishermen, more successful fighters.  To take that away would take away what makes us human; our individuality.  Everyone has their strengths and weaknesses.~ = ~I apologise, I did not mean to ramble.  I do not agree with classes, but I can see the reason for their existence.~
    IF ~~ EXIT
  END

  IF ~~ gate
    SAY ~Yes, I have.  Several years back, before the Iron Crisis.  I did not like it at all...too many people, too much intrigue and too much activity.  I would not care to go there again.~
    IF ~~ EXIT
  END

  IF ~~ pastries
    SAY ~(Iylos looks startled for a moment.) I don't mind them, but they aren't my first choice of food, no.  I am rather partial to custard tarts, however.~
    IF ~~ EXIT
  END

  IF ~~ drink
    SAY ~Water has always been sufficient for me; alcohol confuses the mind and weakens the body, and I would not care to be caught unawares--in any situation.~
    IF ~~ EXIT
  END

  IF ~~ animal
    SAY ~I have no favourite animal, and neither does this topic concern our quest.  I would appreciate it if you would stop bothering me and get back to the quest at hand.~
    IF ~~ EXIT
  END

  IF ~~ tattoos
    SAY ~That is none of your business, and I intend to keep it that way.  Please leave me alone, <CHARNAME>, I have no wish for idle chatter.~
    IF ~~ EXIT
  END

  IF ~~ kill
    SAY ~(Iylos' face tightens, and his eyes narrow.) Why would you be interested in such a morbid question, <CHARNAME>?~
    ++ ~No reason, just wondering.~ + kill_1
    ++ ~Because it interests me...when I kill, there's the exhilaration of the hunt, and the adrenalin rush of the final blow.  Of course, the regret hits me afterwards, but it is not important and easily dismissed.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + kill_2
    ++ ~When I kill, my mind is a blank slate; death is my purpose, and there is no point evading my fate.  I was just wondering what it was like for another.~ DO  ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-2)~ + kill_2
    ++ ~It isn't morbid, I wish to know purely for scientific reasons.~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + kill_2
    ++ ~I'm not, I'm just--I don't like death. I hate it, and I wish I didn't have to kill.~ + kill_3
  END

  IF ~~ kill_1
    SAY ~Then you would not mind if I do not answer the question.~
    IF ~~ EXIT
  END

  IF ~~ kill_2
    SAY ~You truly are a spawn of Bhaal.  (Sigh)~
    IF ~~ + kill_3
  END

  IF ~~ kill_21
    SAY ~No, I did not.~
    IF ~~ EXIT
  END
  
  IF ~~ kill_3
    SAY ~When I fight, there is only one thing upon my mind; find a weakness, and strike.  If I can, I will render the enemy unconscious, but the circumstances surrounding our quest do not look kindly upon such behaviour.  It would be no good if enemies begin to wait until dark to attack, seeking revenge for the damages we have done them.~
    ++ ~You didn't answer my question.~ + kill_21
  END

  IF ~~ hair
    SAY ~(Iylos raises an eyebrow.) Yes, it looks fine.  A little windblown perhaps, but fine nonetheless.~
    IF ~~ EXIT
  END

  IF ~~ flower
    SAY ~The forget-me-not.~
    ++ ~Why the forget-me-not?~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + flower_1
    ++ ~What's a forget-me-not?~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + flower_2
    ++ ~Alright.~ EXIT
  END

  IF ~~ flower_1
    SAY ~I like the blue colour painted upon its petals; it reminds me of the desert sky on a clear day.  Calm, peaceful, and with a lingering regret that night must come to pass.~
    IF ~~ EXIT
  END

  IF ~~ flower_2
    SAY ~A forget-me-not is a small blue flower which sticks to fabric.  I like the blue colour painted upon its petals; it reminds me of the desert sky on a clear day.  Calm, peaceful, and with a lingering regret that night must come to pass.~
    IF ~~ EXIT
  END

  IF ~~ treat
    SAY ~Not particularly--there was no time for such frivolities in the monastery, <CHARNAME>.  'Treats', as such, were not allowed.  We were given another kind of reward for good behaviour.~
    ++ ~What was that?~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + treat_1
    ++ ~Makes sense.~ + treat_1
  END

  IF ~~ treat_1
    SAY ~If we behaved well in lessons, we were taken to the city and allowed to wander its boundaries.  We did not get out very often, unless it was to work or meditate, so such visits were treasured above almost all else.  Enough of that, however...let us get back to the road.~
    IF ~~ EXIT
  END

  IF ~~ dale
    SAY ~Yes, I have.  I quite like the Dales, frigid though they are.  I stayed in Luskan, even visited the small town of Kuldahar--one day I would like to return there, it was breathtaking.  The Spine of the World is, indeed, very beautiful...but just as perilous.  That could explain why I like it so much.~
    IF ~~ EXIT
  END

  IF ~~ colour
    SAY ~Blue.  But, really <CHARNAME>--must you ask such frivolous questions?!  We have tasks to be doing, and shouldn't be standing around idly discussing our favourite things.~
    IF ~~ EXIT
  END

  IF ~~ scent
    SAY ~The scent of roses in the early morning.  Or possibly freshly baked bread.~
    IF ~~ EXIT
  END

  IF ~~ volo
    SAY ~Ah...Volo.  I don't like him at all--a pompous fool, always exaggerating tales of his and others' exploits.  I'm constantly surprised by how well his books sell, but I suppose it really should not.~ = ~I once met Volothamp; we were at an inn, and he was harassing the owner for a tale about several famous adventurers who had just passed through; I believe it was Drizzt and his followers.  I intervened and politely asked a few questions of my own, and after reading Volo's notes showed them to the owner of the inn, who promptly threw Volo out of the establishment and thanked me, throwing the notes into the fire.  (Iylos chuckles.)~
    ++ ~What did the notes say?~ + volo_1
    ++ ~Heh, yeah.~ EXIT
  END

  IF ~~ volo_1
    SAY ~As I remember, it was something along the lines of how the inn was thoroughly disreputable, and how the owner was surely a tramp of some kind.  Volo's way of getting back at him for refusing to divulge details of Drizzt's stay, I suppose.  Pathetic.~
    IF ~~ EXIT
  END

  IF ~~ knownbalth
    SAY ~Since I was a child.  He was my best friend, then my tutor, and then my Master.~ = ~<CHARNAME>, I am tired of answering your questions.  Leave me be!~
    IF ~~ EXIT
  END

  IF ~~ selfhate
    SAY ~Sometimes, yes.  But self-hatred never gets one anywhere.  We all make mistakes; sometimes terrible, and we must deal with the consequences of those mistakes, whether it be by doing a good deed or suffering our conscience.  Everyone handles it differently.  Not that you would know, of course, <CHARNAME>; being a Bhaalspawn and all.~
    IF ~~ EXIT
  END

  IF ~~ sunsets
    SAY ~Yes, I do.  The sunsets in the desert are spectacular...gold, red, and orange, spraying out from the remnants of the dying sun.  One day I hope you see it, <CHARNAME>, so you can see the true beauty of the desert--and gain some modicum of respect for it.~
    IF ~~ EXIT
  END

  IF ~~ moretattoos
    SAY ~No, I do not.~
    IF ~~ EXIT
  END

  IF ~~ parents
    SAY ~Perhaps, but it is none of your concern.  Please cease prying into my business, <CHARNAME>, it is not an area you wish to dabble in.  (Iylos' eyes take on a dangerous glint as he turns away.)~
    IF ~~ EXIT
  END

  IF ~~ desert
    SAY ~Usually some form of shelter is available, even if it is just in the form of a rocky outcropping or an overhang.  Caves are also good to sleep in; they provide warmth and protection from the elements.  I'm fairly sure we won't be needing to resort to any of those things, but they are there if needed.~
    IF ~~ EXIT
  END

  IF ~~ neverwinter
    SAY ~The city of Neverwinter?  No, I have not.  I have heard many things about it, and none of them good, however.~
    IF ~~ EXIT
  END

  IF ~~ nightday
    SAY ~It depends on my mood--and right now, my mood is annoyed.  Cease your damned questions, and leave me be!~
    IF ~~ EXIT
  END

  IF ~~ monk
    SAY ~I had no choice in the matter; I was raised in a Monastery, among many monks.  What else would I have done?~  = ~No, it was become a monk or a scholar, and I had no wish to spend all day inside a cage of knowledge and books.~
    IF ~~ EXIT
  END

  IF ~~ PID_Med
    SAY ~Of course--we can continue doing it each morning before sunrise, if you wish.~
    ++ ~I'd like that.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Med_1
    ++ ~No thanks...I'd just like to do it one more time.~ + PID_Med_2
    ++ ~Do you like chicken?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Med_3
  END

  IF ~~ PID_Sorry
    SAY ~Life has been hard for us all, <CHARNAME>, not just you.  That does not excuse such rudeness.~
    ++ ~Still, I apologise.  It was not my intention to say what I did, it just...happened.~ + PID_Sorry_1
    ++ ~Look, I'm no good at this.  Just--sorry.  Okay?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Sorry_1
    ++ ~I'm sorry, Iylos.  What more could you want?!~ + PID_Sorry_1
    ++ ~Why even bother apologising if you're going to act like that?~ + PID_Sorry_1
  END

  IF ~~ PID_PPlane
    SAY ~In theory.  But this place is so ominous...the very sky screams unnatural doom.~
    ++ ~You get used to it after a while.  Really, you do.~DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_PPlane_1
    ++ ~I created it; do I scream unnatural doom?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_PPlane_2
    ++ ~I...I know what you mean.  But I created it, apparently...so it can't be all that bad...can it?~ + PID_PPlane_2
    ++ ~You're just pathetic and weak.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_PPlane_3
  END

  IF ~~ PID_Bhaal
    SAY ~Perhaps my comment was out of line, <CHARNAME>, but you cannot say what you did and then expect one to act like all was fine.  Leave me alone, <CHARNAME>, I have no wish to speak to you any further.~
    IF ~~ EXIT
  END

  IF ~~ PID_Med_1
    SAY ~Then I expect you up at dawn tomorrow morning.  (Iylos smiles at you faintly.)~
    IF ~~ EXIT
  END

  IF ~~ PID_Med_2
    SAY ~If you wish--though practice makes perfect, they say.  Are you sure?~
    ++ ~Yes, quite.  Thanks, but no thanks.~ + PID_Med_21
    ++ ~Actually, I think I will do it a bit more than that...do you mind teaching me some more?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Med_22
  END

  IF ~~ PID_Med_3
    SAY ~(After a moment's pause, Iylos begins to laugh.) Is that a yes or a no, <CHARNAME>?~
    ++ ~A definite yes.~ + PID_Med_1
    ++ ~A no.  (Grin)~ + PID_Med_21
  END

  IF ~~ PID_Sorry_1
    SAY ~Do not expect a simple apology to right what you said, <CHARNAME>, but it is accepted.  For now.~
    IF ~~ EXIT
  END

  IF ~~ PID_PPlane_1
    SAY ~For some strange reason, that doesn't comfort me in the slightest.~
    IF ~~ EXIT
  END

  IF ~~ PID_PPlane_2
    SAY ~Do you really want me to answer that question, <CHARNAME>?~
    ++ ~Ah...perhaps not, then.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_PPlane_21
    ++ ~(Roll your eyes)~ + PID_PPlane_21
    ++ ~Yes!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_PPlane_22
    ++ ~Must you act immature?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_PPlane_21
  END

  IF ~~ PID_PPlane_3
    SAY ~And you are nought but a self-obsessed raven, in twain, to quote one famous poet.  Leave me to my thoughts, <CHARNAME>, I am not interested.~
    IF ~~ EXIT
  END

  IF ~~ PID_Med_21
    SAY ~(Iylos shrugs.) Your choice.~
    IF ~~ EXIT
  END

  IF ~~ PID_Med_22
    SAY ~If you want to learn more, then I expect you up at dawn tomorrow morning.  (Iylos smiles at you faintly.)~
    IF ~~ EXIT
  END

  IF ~~ PID_PPlane_21
    SAY ~(Iylos loses his usual composure for a moment, and flashes you a grin.)~
    IF ~~ EXIT
  END

  IF ~~ PID_PPlane_22
    SAY ~If you wish.  Yes, in answer to your question.  (Iylos loses his usual composure for a moment, and flashes you a slight grin.)~
    IF ~~ EXIT
  END

  //New questions as of 9/2/07
  IF ~~ Appreciate
    SAY ~You have a large task ahead of you, <CHARNAME>--I would not want you going in all by yourself.  You might get hurt!~ = ~Better I come along and look after you, don't you think?~
    ++ ~I can handle myself, Iylos.  You don't need to baby me.~ + AP1
    ++ ~Whatever.  It would have been nice of you to just say 'that's okay, <CHARNAME>, I don't mind' instead of giving me this bullshit.~ + AP2
    ++ ~Heh, you might be right, at that.  Anyway--thank you.~ + AP3
    ++ ~If you say so.~ EXIT
  END

  IF ~~ AP1
    SAY ~If you say so, <CHARNAME>.  If you say so.  (He grins slightly.)~
    IF ~~ EXIT
  END

  IF ~~ AP2
    SAY ~I was just being humorous.  There is no need to get up in arms about it.~
    IF ~~ EXIT
  END

  IF ~~ AP3
    SAY ~No problem at all, <CHARNAME>.~
    IF ~~ EXIT
  END

  IF ~~ HerbalLore
    SAY ~I know some things, but the vast majority of plant and herb lore has evaded my interest so far.  Perhaps one day I will become interested in it, but for now--I would prefer to know the art of battle than that of healing.~
    IF ~~ EXIT
  END

  IF ~~ Leila
    SAY ~Leila studied at the Monastery for a short time before becoming embroiled with...family, so to speak.  She was to quit studying and acquire a job, earn money, or face the prospect of having her child taken away from her.~ = ~It was not a happy situation.  I joined the Monastery several years after she had left, but she still visited the Monastery, sometimes brought us food from the Inn and stories of the outside world.  She was almost like a universal mother to us students, even though she was only several years older than us.~ = ~She did not support my decision to leave the Monastery, and almost made me stay.  Leaving was...hard for me, and having to leave Leila and little Keira made it no easier.~ = ~But I don't want to speak of this any further--I have delved enough into past incidents to satisfy your curiosity, surely.~
    IF ~~ EXIT
  END

  IF ~~ Bitter
    SAY ~Bitter?  I don't think of myself as bitter...but perhaps it is because each day, I see so much I have not experienced, not done, not tried.  Things I have missed out on, and *can't* try.  Life is not endless, and my thread is, doubtless, nearing its middle.~ = ~Maybe that helps you, a little.  But I do not think of myself as bitter.  Dark, perhaps.  But not bitter.~
    IF ~~ EXIT
  END

  IF ~~ Night
    SAY ~The night holds many dangers, beyond that of the day.  You can't see where you're going--at least, I can't; sound is somewhat enhanced, but vision goes out the window, so to speak.  I find that incredibly frustrating.~ = ~So, no, I do not like the night.  It has dangers hidden to our eyes, and has a tenuousness I would rather not have to face each and every time it comes upon Faerun.~
    IF ~~ EXIT
  END

  IF ~~ Consider
    SAY ~A friend, yes.  You have proved yourself somewhat worthy of my friendship, and as such, I will treat you as one.~
    IF ~~ EXIT
  END

  IF ~~ Consider2
    SAY ~A traveling companion; a friend would be a severe distortion of the truth.~
    IF ~~ EXIT
  END

  IF ~~ WhatsNextForIylos
    SAY ~I am not terribly sure.  Return to the Monastery for a time, perhaps, or return to the deserts.  I feel that I have not finished traveling, and would like to continue--perhaps visit the Dales once more, or to Luskan.~
    IF ~~ EXIT
  END

  IF ~~ GrowingHair
    SAY ~Long hair is not helpful in combat, <CHARNAME>, as you know.  It was mostly a personal decision to shave my head; though keeping it smooth is an endless, unsatisfying task, I prefer that to not being able to see.~
    IF ~~ EXIT
  END

  // PID 1--Cease
  IF ~~ PID_Cease
    SAY ~I'm just doing my job, Bhaalspawn.  Do you have a problem with that?~ 
    ++ ~Actually yes, I do.  If your job simply consists of being prejudiced and rude, Iylos, then I would rather you go.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_1
    ++ ~Of *course* not!  I mean, I'm sure *you* wouldn't mind being eyed like a fat mouse by a hungry cat, would you?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Cease_1
    ++ ~Iylos, please, there is no need for hostility here.  I'm just asking you to trust me a little.  Obviously I'm not going to harm you or any other innocents; I haven't so far, why should I now?~ + PID_Cease_2
    ++ ~Surely you can see that I mean only good, Iylos?  Must you persist with this suspicion?~ + PID_Cease_3
    ++ ~Would 1000 gold, perhaps, ease your suspicion somewhat?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-5)~ + PID_Cease_4
    ++ ~Leave.  Me.  Alone.  I need some room to work, I can't do what I need to do with you constantly breathing down the back of my shirt.~ + PID_Cease_1
    ++ ~Actually, it doesn't matter.  Don't worry about it.~ EXIT
  END

  IF ~~ PID_Cease_1
    SAY ~I am doing my duty to one I am loyal to, and you would do well to at least respect that.  Or is the concept of honour and loyalty something that is unfamiliar to you?~
    ++ ~(Stay silent)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_11
    ++ ~I am quite familiar with honour and loyalty and respect those who exhibit these traits.  However, I would appreciate it if you would give me a bit of breathing room and allow me to work without your constant watching.  I know you mean well, and that you have reason to be suspicious of me, but everything you have seen so far of me has been good, has it not?.~ + PID_Cease_12
    ++ ~MY command stands.  Leave if you wish, Iylos, I'm sick of your tired obsession with 'duty!.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_13
    ++ ~Iylos, just back off a little.~ + PID_Cease_14
    ++ ~Please, Iylos, just do as I ask.  You can't observe me when I feel like I have to watch my every move, because it isn't how I truly am.  Look at it from that perspective.~ + PID_Cease_12
  END

  IF ~~ PID_Cease_2
    SAY ~Humour, <CHARNAME>?  Since when has that been a part of your make up?  Not that it matters.  I am not a cat, stalking my prey, just waiting for a chance to attack.~
    IF ~~ + PID_Cease_1
  END

  IF ~~ PID_Cease_3
    SAY ~Just because you haven't harmed any innocents so far does not mean you don't have any intention of doing so in the future, <CHARNAME>.  Don't attempt to dissuade me from my task, it will not work.~
    ++ ~Iylos, this is foolishness.  You know as well as I do that I'm not going to harm anybody I don't need to.~ + PID_Cease_31
    ++ ~I'm not trying to dissuade you from your task.  I'm asking you to at least trust me enough to let me do what I need to without you questioning my every move!~ + PID_Cease_14
    ++ ~I don't kill unless it is a necessity.  You, of all people, should understand that.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Cease_31
    ++ ~Fine!  I give up.  In the future, watch yourself; you may find yourself on the wrong end of a sword, or perhaps a fist.  Either way...~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PID_Cease_14
  END

  IF ~~ PID_Cease_4
    SAY ~(Iylos' eyes flash.) You would try to *bribe* me, <CHARNAME>?!  You are truly a despicable <PRO_MANWOMAN>, and I will leave this...this *party* as soon as I possibly can.  If you weren't under the protection of the Five I would kill you where you stand!~
    ++ ~The...five?~ + PID_Cease_41
    ++ ~The five?  I think I've heard of them...aren't they a group of people out to *kill* Bhaalspawn?~ + PID_Cease_41
    ++ ~Iylos, don't even let yourself consider the notion that you would be able to kill me.  I am a *Bhaalspawn*, I have powers you couldn't dream of.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_42
    + ~CheckStatGT([PC],12,WIS)~ + ~(Cluck your tongue) Iylos, I don't think your Master will be very happy with that little display!  Come now...do you REALLY have any intention of leaving this party, or are you just bluffing as I suspect?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PID_Cease_42
    ++ ~I will do what I can to stop you from being in the way!  I have no intention of harming you or any other who has not caused *me* harm.~ + PID_Cease_32
  END

  IF ~~ PID_Cease_11
    SAY ~Pah, I thought not.  Don't try to best me, <CHARNAME>; you will find it is *not* worth your while.  Either way...~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_12
    SAY ~I admit a grudging respect for your abilities, <CHARNAME>- but not for you personally.  I have yet to see any great feat which could make me trust you; no heavenly wonder with which to convince me of your innocence.~ = ~Just because you haven't done anything so far does not mean you aren't thinking about doing it in future.~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_13
    SAY ~I have my orders, and I will *follow* them!  Whether or not I have your support doesn't matter to me.  If you force me to leave, I will trail you unobserved and draw my conclusions regardless.~
    ++ ~I was just joking, Iylos...you can stay.  But please, *please*, give me some space.~ + PID_Cease_121
    ++ ~Leave then.  Goodbye.  As long as I don't have to deal with you in my face all the time!~ + PID_Cease_131
    ++ ~I don't take kindly to intimidation, Iylos.  You are free to leave, but if I find you, *anywhere* near me again, you will regret the moment your god-forsaken 'master' told you to join me.  Pray our paths do not cross again!~ + PID_Cease_131
    ++ ~You can stay...for the moment.  But one more out of line move; one more situation where you take over or get in my way and you're gone.  A friendly warning, shall we say.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_123
  END

  IF ~~ PID_Cease_14
    SAY ~I have my orders, <CHARNAME>, and I will follow them.  I would be lax in my duty if I did not watch you as carefully as I do, and I cannot have that upon my head.  That's all there is to it.~
    ++ ~I suppose that's fair enough.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Cease_121
    ++ ~Iylos, you're becoming repetitive.  I tire of this argument...please, at least *consider* putting down your guard, just a little.  If only that, and nothing else.~ + PID_Cease_121
    + ~CheckStatGT([PC],12,WIS)~ + ~Someday soon, Iylos, you will see how very wrong you are in this situation.  I have only the best of intentions, and until you see that, you are blind.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-3)~ + PID_Cease_122
    ++ ~I'm absolutely *awed* by your determination to disregard everything I say, Iylos.~ + PID_Cease_123
  END

  IF ~~ PID_Cease_31
    SAY ~Perhaps.  Either way...~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_32
    SAY ~No, I do not.  You say that, but I have yet to see it for yourself...you kill those you could spare, and you disregard those you do.  I see no compassion there.~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_41
    SAY ~The Five are just some of the people who are interested in you, <CHARNAME>--as I have told you before, you are becoming rather famous.  Infamous.  Whichever you prefer.  Either way...~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_42
    SAY ~Don't try to best me, <CHARNAME>; you will find it is *not* worth your while.  Either way...~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_121
    SAY ~I will think on it, <CHARNAME>, but for now...we will see.~
    IF ~~ EXIT
  END

  IF ~~ PID_Cease_122
    SAY ~Perhaps, but I will do what I believe is right regardless of your opinion, Bhaalspawn.  Remember that.~
    IF ~~ EXIT
  END

  IF ~~ PID_Cease_123
    SAY ~I will do what I believe is right regardless of your opinion, Bhaalspawn.  Remember that.~
    IF ~~ EXIT
  END

  IF ~~ PID_Cease_131
    SAY ~Fine, but beware...*I* do not take kindly to intimidation, Bhaalspawn.  Goodbye...for now.~
    IF ~~ DO ~LeaveParty() SetGlobal("IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  // PID 2--Balthazar
  IF ~~ PID_KnowsBalth
    SAY ~Indeed.~ 
    ++ ~Much like yourself--I can see why you hold him in such high esteem, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",4)~ + PID_KnowsBalth_1
    ++ ~Balthazar is a very enigmatic man.  I can only hope he fights for the same cause as us.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_KnowsBalth_2
    ++ ~A pathetic man...obsessed with mundane virtues such as loyalty and obedience.  Why concern yourself with him so?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-3)~ + PID_KnowsBalth_3
    ++ ~(Stop conversing)~ EXIT
  END

  IF ~~ PID_KnowsBalth_1
    SAY ~Thank you, <CHARNAME>.  He is a powerful man, in more ways than one, and it is an honour to serve him.~
    ++ ~I'm sure.  No wonder you were so reluctant to disobey him; I'm sure he would see it as a betrayal.~ + PID_KnowsBalth_11
    ++ ~No problem.~ EXIT
    ++ ~He is a powerful man, indeed.  I appreciate you vouching for me, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_KnowsBalth_12
    ++ ~Perhaps.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
  END

  IF ~~ PID_KnowsBalth_2
    SAY ~Us?  I fight for Balthazar's cause, <CHARNAME>--do not think that because I vouched for you that I will blindly follow your lead.  I will continue to aid you for a time, until I feel that I have done my part in this.~
    ++ ~Thank you, Iylos.  I appreciate it.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Of course--I meant in general.~ + PID_KnowsBalth_21
    ++ ~Thank you for continuing your help, regardless--I would be lost without it.~ + PID_KnowsBalth_22
  END

  IF ~~ PID_KnowsBalth_3
    SAY ~Because, <CHARNAME>, he is worthy.  Perhaps unlike yourself.~
    IF ~~ EXIT
  END

  IF ~~ PID_KnowsBalth_11
    SAY ~Indeed.  I would never dream of betraying one such as Balthazar.~
    ++ ~I can understand why.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~I apologise for my...reluctance to accept that you were simply doing your job.  Regardless, lets get going.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Let's get going, then.~ EXIT
  END

  IF ~~ PID_KnowsBalth_12
    SAY ~I was just doing what I believe is right, <CHARNAME>.  Do not think that I will blindly follow your lead, however; I will continue to aid you for a time, until I feel that I have done my part in this.~
    ++ ~Thank you, Iylos.  I appreciate it.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Of course--I meant in general.~ + PID_KnowsBalth_21
    ++ ~Thank you for continuing your help, regardless--I would be lost without it.~ + PID_KnowsBalth_22
  END

  IF ~~ PID_KnowsBalth_21
    SAY ~Perhaps.~
    IF ~~ EXIT
  END

  IF ~~ PID_KnowsBalth_22
    SAY ~It is my pleasure, <CHARNAME>.~
    IF ~~ EXIT
  END

  IF ~~ PID_WhoisBalth
    SAY ~A man I hold great trust and respect for- that is all you need to know for the time being.~
    IF ~~ EXIT
  END

  // PID 3--Amkethran
  IF ~~ PID_Amk
    SAY ~I was raised in Amkethran, yes.  What is it to you?~
    ++ ~Oh, nothing...I was just wondering.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_1
    ++ ~You were raised in Amkethran?  Where were you born?~ + PID_Amk_2
    ++ ~I was raised in Candlekeep...my mother died when I was very young.  I was raised by a man called Gorion.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_3
    ++ ~Amkethran isn't the place for a child...so dusty, so dry.  Surely you had a terrible childhood?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_2
    ++ ~Were you raised in the Monastery, or...?~ + PID_Amk_2
  END

  IF ~~ PID_Amk_1
    SAY ~Fine.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_2
    SAY ~I see no reason to share my past with you, <CHARNAME>; I am here because I must, not out of any wish to get to know you.  Keep that in mind.~
    ++ ~Putting two and two together isn't that hard...you were raised in Amkethran in a Monastery, you have not mentioned any parents to speak of, and you either don't know or aren't willing to share where you were born.  Are you...are you an orphan, Iylos?~ + PID_Amk_21
    ++ ~Monks could not have the best of parents...~ + PID_Amk_22
    ++ ~A Monastery is not the best place to raise a child, surely?~ + PID_Amk_23
  END

  IF ~~ PID_Amk_3
    SAY ~That isn't a question, <CHARNAME>.  Are you quite finished?~
    ++ ~I grew up with my half-sister, Imoen.  We did everything together...quite often we got in trouble with Gorion and the monks, but we grew up okay.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_31
    ++ ~I grew up in Candlekeep, as I said, though I don't consider it my home.  Gorion was weak, pathetic, and his death forced me to come to terms with the world.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_32
    ++ ~Yes, I am--now it is your turn to tell me something.  A truth for a truth.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_33
    ++ ~Gorion was a kindly old man, though not much of a father.  Did you have a father figure as you grew up?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_34
  END

  IF ~~ PID_Amk_21
    SAY ~Yes.  Does it matter?~
    ++ ~No, it doesn't--I was just curious.  Sorry for prying.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_211
    ++ ~Yes, actually it does.  You see, I, too, was an orphan.  Funny how things work out, isn't it?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_212
    ++ ~(Remain silent)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_213
    ++ ~Of course not...I apologise, but I had to know.~ + PID_Amk_213
  END

  IF ~~ PID_Amk_22
    SAY ~No, they were not.  Leave me be, <CHARNAME>, I have no interest in discussing this with you.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_23
    SAY ~Maybe not, but I survived.  Leave me be, <CHARNAME>, I have no interest in discussing this with you.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_31
    SAY ~(Iylos is silent, and waits for you to continue.)~
    ++ ~...That's all, really.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_311
    ++ ~Did you have someone, like I had Imoen?  Someone your own age?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_312
    ++ ~Look, I'm sorry to have brought it up.  It doesn't matter, you obviously aren't interested.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Amk_313
  END

  IF ~~ PID_Amk_32
    SAY ~Gorion, from all that I've heard, was a very honourable and good man--a Harper, in point of fact.  And you say he was weak and pathetic?~
    ++ ~Yes, I do!  He just went off and died, left me to fend for myself without giving me a moment's notice!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_321
    ++ ~Perhaps that was an exaggeration...he was a good and honourable man, yes.  But he had no strength when it came to us; he died at a time when I needed him the most.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_322
    ++ ~Look, it doesn't matter...don't worry about it.~ + PID_Amk_323
  END

  IF ~~ PID_Amk_33
    SAY ~I am an orphan, as you may have suspected.  I grew up in the Monastery, but I got bored with my Monastic training and left.  There.  Are you satisfied?~
    ++ ~Yes, thank you.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_331
    ++ ~No, I'm not--why did you leave?~ + PID_Amk_332
    ++ ~Fair enough...thank you.  I've got one last question, though...Why are you so secretive about your past with me?  I've never been anything but friendly and yet you remain aloof and unfriendly.~ + PID_Amk_333
  END

  IF ~~ PID_Amk_34
    SAY ~No, I did not--the monks were not what you would call suitable parents.  I have no wish to discuss this with you, <CHARNAME>...~
    ++ ~Of course.  I apologise.~ + PID_Amk_341
    ++ ~You might not, but I do.  I like to know about my companions, thankyouverymuch.~ + PID_Amk_342
    ++ ~Fine.~ EXIT
  END

  IF ~~ PID_Amk_211
    SAY ~Of course.  You're...forgiven, I suppose.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_212
    SAY ~Indeed.~ [ LK#I102 ]
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_213
    SAY ~I thought not.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_311
    SAY ~I see.  I did not have one such as Imoen to grow up with; no sister or brother to share joy or sadness with.  I have accepted that.  That's enough of this conversation, any more and it will become maudlin.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_312
    SAY ~I did not have one such as Imoen to grow up with; no sister or brother to share joy or sadness with.  I have accepted that.  That's enough of this conversation, any more and it will become maudlin.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_313
    SAY ~You're...forgiven, I suppose.  Let's get moving.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_321
    SAY ~He did not leave you without a moment's notice, <CHARNAME>--no father would ever do such a thing.  You, at least, had a father.  Think on that before you go accusing Gorion of being 'weak' and 'pathetic'.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_322
    SAY ~I highly doubt he would die without cause, <CHARNAME>.  But that is your business, not mine, and I would prefer to keep it that way.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_323
    SAY ~If that is what you wish.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_331
    SAY ~Good.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_332
    SAY ~I left because I had to.  I am not the type to stay in a monastery my entire life, I had to go out into the world and seek out inner peace.  Many wished me to stay, but I felt a drive to explore and the desert became my paradise, forever unveiling new mysteries and answering questions no human ever could.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_333
    SAY ~I see no reason to share my past with you, <CHARNAME>; I am here because I must, not out of any wish to get to know you.  Keep that in mind.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_341
    SAY ~You're forgiven, <CHARNAME>.  It is just not a subject I wish to speak about with you.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_342
    SAY ~You will survive, I suspect.~
    IF ~~ EXIT
  END

  // PID 3--Amkethran (good path)
  IF ~~ PID_Amk2
    SAY ~I was raised in Amkethran, yes.  What was it that you wanted to know, <CHARNAME>?~ [ LK#I104 ]
    ++ ~Oh, nothing...I was just wondering.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_1
    ++ ~You were raised in Amkethran?  Where were you born?~ + PID_Amk2_2
    ++ ~I was raised in Candlekeep...my mother died when I was very young.  I was raised by a man called Gorion.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_3
    ++ ~Amkethran isn't the place for a child...so dusty, so dry.  Surely you had a terrible childhood?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk2_2
    ++ ~Were you raised in the Monastery, or...?~ + PID_Amk2_2
  END

  IF ~~ PID_Amk2_1
    SAY ~If you're sure.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_2
    SAY ~I was an orphan.  I was given to the Monastery when I was very young, and I was never told who my parents were, why they left me there or where I was born.~
    ++ ~I'm sorry.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_21
    ++ ~Oh, Iylos...(Hug him)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_21
    ++ ~I was an orphan as well...I was raised by Gorion in Candlekeep, but I never knew my mother.  I didn't know about my...father, I suppose, until Gorion's death.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_22
  END

  IF ~~ PID_Amk2_3
    SAY ~That...isn't really a question, <CHARNAME>.  (Iylos smiles slightly.) Are you finished, or did you have more to add?~
    ++ ~I grew up with my half-sister, Imoen.  We did everything together...quite often we got in trouble with Gorion and the monks, but we grew up okay.~ + PID_Amk2_31
    ++ ~I grew up in Candlekeep, as I said, though I don't consider it my home.  Gorion was weak, pathetic, and his death forced me to come to terms with the world.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk2_32
    ++ ~Yes, I am--now it is your turn to tell me something.  A truth for a truth.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_33
    ++ ~Gorion was a kindly old man, though not much of a father.  Did you have a father figure as you grew up?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_34
  END

  IF ~~ PID_Amk2_4
    SAY ~It was hard in many ways, but I am the better for it.  "What doesn't kill only makes you stronger" was one of the first lessons I learnt in the Monastery.~ = ~The monks were kind, but they weren't the best of parents--they didn't know how to deal with an overactive child, so they set me to work and study.~ = ~I was happy, in a way.  I never knew any other way; it was then that I befriended one of the younger monks, a man named Balthazar.  He was kind to me, and took me under his wing.  I owe a lot to him.~
    + ~Global("MetBal","GLOBAL",1)~ + ~I have to admit, I can't really imagine Balthazar being your mentor...(Smile slightly)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_41
    + ~!Global("MetBal","GLOBAL",1)~ + ~You've mentioned Balthazar before...but I won't invade your privacy any more.  Thank you for telling me, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_42
    ++ ~It was much the same in Candlekeep--Gorion took me under his wing and taught me what he knew, and Imoen and I grew up under his direction and that of the monks.  So I suppose we aren't so different...in one way, at least.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Amk2_43
    ++ ~I'm glad your childhood was a happy one, if hard.  Not many are as lucky in that respect.~ + PID_Amk2_44
  END

  IF ~~ PID_Amk2_5
    SAY ~Yes, I was raised in the Monastery...let me explain.~
    IF ~~ + PID_Amk2_2
  END

  IF ~~ PID_Amk2_21
    SAY ~It is well in the past, <CHARNAME>, and though I harbor a regret that I never met my parents, I do not regret growing up in the monastery.  I'm fine.~
    ++ ~You do know people say 'I'm fine' even when their world is collapsing, don't you?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_211
    ++ ~I'm glad you grew up the way you did, Iylos...otherwise you wouldn't be the same man you are now, who is helping me achieve balance in a life which is so fabulously torn it is sometimes hard to see which way to turn.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_212
    ++ ~I'm sorry to have brought it up, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_213
    ++ ~I regret not meeting my mother...I definately don't regret not meeting my father, though I have...sort of met him, I suppose.  In a way, I meet him each time I fall asleep.  (Sigh)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_214
  END

  IF ~~ PID_Amk2_22
    SAY ~It is well in the past, <CHARNAME>, and though I harbor a regret that I never met my parents, I do not regret growing up in the monastery.  I must admit, I hope you don't have such a regret that you never met your father...from what I hear he seems rather ominous.~
    ++ ~Aha, ah.  Hah.  Hah.  Iylos, *please*...your humour would be more suited to cattle than humans.  Don't inflict it upon one such as me.~ + PID_Amk2_221
    ++ ~Ominous only *begins* to describe Bhaal...though I'm sure even Bhaal himself would have the manners to not bring up another's questionable heritage.  (Glare at him)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk2_222
    ++ ~No, I don't regret that I never met my father...(Grin)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_223
  END

  IF ~~ PID_Amk2_31
    SAY ~(Iylos is silent and waits for you to continue.)~
    ++ ~...That's all, really.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_311
    ++ ~Did you have someone, like I had Imoen?  Someone your own age?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_312
    ++ ~Look, I'm sorry to have brought it up.  It doesn't matter, you obviously aren't interested.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Amk_313
  END

  IF ~~ PID_Amk2_32
    SAY ~Gorion, from all that I've heard, was a very honourable and good man--a Harper, in point of fact.  And you say he was weak and pathetic?~
    ++ ~Yes, I do!  He just went off and died, left me to fend for myself without giving me a moment's notice!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_321
    ++ ~Perhaps that was an exaggeration...he was a good and honourable man, yes.  But he had no strength when it came to us; he died at a time when I needed him the most.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_322
    ++ ~Look, it doesn't matter...don't worry about it.~ + PID_Amk_323
  END

  IF ~~ PID_Amk2_33
    SAY ~I am an orphan, as you may have suspected.  I grew up in the Monastery, under the tutelage of the monks and Balthazar, who was to become my teacher in the monastic way.  I eventually left in search of inner peace, and found the Anauroch desert.  Is that enough?~
    ++ ~Yes, thank you.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_331
    ++ ~No, its not--why did you leave?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk2_332
  END

  IF ~~ PID_Amk2_34
    SAY ~No, I did not--the monks were not what you would call suitable parents.  The ones I was close to were more like older friends who occasionally acted in the parental roles, but they were never true parents, only in terms of discipline.~ = ~It was hard in many ways, but I am the better for it.  What doesn't kill can only make you stronger was one of the first lessons I learnt in the Monastery.~ = ~The monks were kind, but as I have said, they weren't the best of parents--they didn't know how to deal with an overactive child, so they set me to work and study.~ = ~I was happy, in a way.  I never knew any other way; it was then that I befriended one of the younger monks, a man named Balthazar.  He was kind to me, andtook me under his wing.  I owe a lot to him.~
    + ~Global("MetBal","GLOBAL",1)~ + ~I have to admit, I can't really imagine Balthazar being your mentor...(Smile slightly)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_41
    + ~!Global("MetBal","GLOBAL",1)~ + ~You've mentioned Balthazar before...but I won't invade your privacy any more.  Thank you for telling me, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_42
    ++ ~It was much the same in Candlekeep--Gorion took me under his wing and taught me what he knew, and Imoen and I grew up under his direction and that of the monks.  So I suppose we aren't so different...in one way, at least.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Amk2_43
    ++ ~I'm glad your childhood was a happy one, if hard.  Not many are as lucky in that respect.~ + PID_Amk2_44
  END

  IF ~~ PID_Amk2_41
    SAY ~Perhaps not, but that is what occured nonetheless.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_42
    SAY ~No problem.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_43
    SAY ~Indeed, perhaps not.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_44
    SAY ~Thank you.  No, they are not...not all have the privilege of being clothed and fed each night, and having a place to sleep in.  We *were* lucky, in that respect.  In others, though...perhaps not.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_211
    SAY ~(Iylos chuckles) Indeed...but I *am* fine.  For the time being, anyway.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_212
    SAY ~Thank you for that rather underhanded compliment, <CHARNAME>.  I hope I am helping, and I am sorry for the problems I caused you when you first agreed to let me travel with you.  I am a better man for my childhood, and for that I am grateful.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_213
    SAY ~It's alright, <CHARNAME>--it is not your fault.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_214
    SAY ~I wish it were otherwise, <CHARNAME>...I truly do.  Having the bane of Bhaal upon you cannot be easy, to be torn between what is right, and what is easy.  Perhaps...perhaps there is something I *can* help you with, but not now.  Another time, perhaps.~
    ++ ~I would like that, thank you, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Sure.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~We'll see.~ EXIT
  END

  IF ~~ PID_Amk2_221
    SAY ~I'm sure you will survive somehow, <CHARNAME>.  But in future, I will make sure to direct my humour to more willing participants, perhaps.  (Iylos grins at you.)~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_222
    SAY ~I apologise, <CHARNAME>, it was not my intent to cause offense.~
    ++ ~It's alright...just don't do it again.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Bah.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
    ++ ~(Sigh) Don't worry about it, Iylos...it isn't your fault.  Its just a sensitive issue with me is all.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_2221
  END

  IF ~~ PID_Amk2_223
    SAY ~(Iylos grins back.)~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_311
    SAY ~ I did not have one such as Imoen to grow up with; no sister or brother to share joy or sadness with.  I have accepted that.  I sometimes regret that I did not, though.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_312
    SAY ~I did not have one such as Imoen to grow up with; no sister or brother to share joy or sadness with.  I have accepted that.  I sometimes regret that I did not, though.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_313
    SAY ~It's alright.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_321
    SAY ~I highly doubt he left you without good cause, <CHARNAME>--no father would ever do such a thing.  You, at least, had a father.  Think on that before you go accusing Gorion of being 'weak' and 'pathetic'.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_322
    SAY ~I highly doubt he would die without cause, <CHARNAME>.  But that is your business, not mine, and I would prefer not to pry.  Thank you.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_323
    SAY ~If that is what you wish.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_331
    SAY ~Good.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_332
    SAY ~I left because I had to.  I am not the type to stay in a monastery my entire life, I had to go out into the world and seek out inner peace.  Many wished me to stay, but I felt a drive to explore and the desert became my paradise, forever unveiling new mysteries and answering questions no human ever could.~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_2221
    SAY ~Still, I apologise.  It was inappropriate and rude, and I am not one to usually vent such feelings.  To the road, then, I suppose.~
    IF ~~ EXIT
  END

  // PID 4--Anauroch
  IF ~~ PID_Anau
    SAY ~Many reasons, <CHARNAME>, and perhaps I shall even explain some to you.  When I left the Monastery, I was fighting with a powerful urge to travel, to explore the unknown and see what was over the next hill.  I travelled to places such as Baldur's Gate and beyond, even to Neverwinter, without finding what I was looking for.~  = ~I met some interesting people, did some interesting things, but it did not hold me captivated for very long.  I wandered listlessly, surviving on the generosity of people and whatever gold I could earn from working.~
    ++ ~(Interrupt) What sort of work did you do?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Anau_1
    ++ ~(Interrupt) What didn't hold your captivation?  Travelling, or the cities you travelled to?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Anau_2
    ++ ~(Let him continue)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_3
  END

  IF ~~ PID_Anau_1
    SAY ~(Iylos glares at you, irritated.) Guarding people, adventuring, building--many things.~
    IF ~~ + PID_Anau_3
  END

  IF ~~ PID_Anau_2
    SAY ~(Iylos glares at you, irritated.) A little of both.  Anyway...~
    IF ~~ + PID_Anau_3
  END

  IF ~~ PID_Anau_3
    SAY ~I made my way back to the Monastery, feeling somewhat crestfallen and dark.  I threw myself into my training, and quickly become one of the most powerful warriors in the Monastery, second only to the Masters and Balthazar.  But I never graduated--I had the strength, the physical skills, but I did not have peace of mind.  I was turbulent, much like yourself.  My mind was a rush of ideas and thoughts, and as much as I and my tutors tried, I could not master my mind.~ = ~Angry at my inability to focus and meditate, I fled into the desert, hoping I would find some answer there.  I came across an...underground encampment, so to speak, who took me in for a while and taught me their language.  But I was forced to move on.~ = ~During my travels through the desert, I learnt many things about both myself and my surroundings--the serenity of the desert brought peace to me, and I felt at home.  It was inexplicable, a slight shift in my awareness, but I'd found a home, and I still regard it as such.~
    ++ ~Well...that was disappointing.  I was hoping for a more interesting story, epic battles with frightening sand-creatures and tragic heartbreaks, perhaps.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_31
    ++ ~Candlekeep was never truly my home...I don't have one.  I'm a vagabond, really, I travel where I must and at times wherever my feet take me.  You're lucky to have somewhere you can call home.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_32
    ++ ~It suits you, I suppose.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_33
  END

  IF ~~ PID_Anau_31
    SAY ~Of course you were--I purposely omitted those.~
    ++ ~You mean you DID fight giant sand-creatures and had tragic heartbreaks?!~ + PID_Anau_311
    ++ ~Ah...okay.  Why?~ + PID_Anau_312
    ++ ~Fool.  I hate you forever and ever!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_313
  END

  IF ~~ PID_Anau_32
    SAY ~I suppose I am, yes.  The desert is where I feel the most comfortable, as strange as it may seem to a city-dweller like yourself.~
    ++ ~Watch who you're calling a city dweller!~ + PID_Anau_321
    ++ ~It does seem a little strange, but I can see where you're coming from.  Thank you for telling me, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_322
    ++ ~It's weird, thats what it is.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Anau_323
  END

  IF ~~ PID_Anau_33
    SAY ~How so?~
    ++ ~Well, you're harsh and sometimes unpredictable.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_331
    ++ ~Uh...doesn't matter.  Forget about it.~ + PID_Anau_332
    ++ ~You can be calm one moment, and then completely change your outlook the next...the desert can look peaceful one moment, and suddenly a raging tornado can appear.  Much the same.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_333
  END

  IF ~~ PID_Anau_311
    SAY ~Perhaps, but you'll just have to wait until I'm ready to tell you, won't you?~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_312
    SAY ~Because I don't particularly feel like sharing those details with you.  I'm sure you understand.~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_313
    SAY ~I see.  That is, of course, your choice--but the reason why I'm not telling you is because I don't feel the need to, and it is quite personal.  I'm sure you understand.~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_321
    SAY ~Well, I suppose you grew up in a remote castle rather than a city, but it is much the same.~
    ++ ~No its not, its nothing like the city!  There were monks, and books, and a small town...okay, maybe it was a bit like a city, but nowhere near as much as Amkethran!~ + PID_Anau_3211
    ++ ~Perhaps.~ EXIT
    ++ ~(Sigh) Don't you understand *anything*?  A city is big, and contains thousands of people.  Candlekeep had hundreds, at most.~ + PID_Anau_3211
  END

  IF ~~ PID_Anau_322
    SAY ~No problem.~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_323
    SAY ~If you wish to think so.~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_331
    SAY ~(Iylos looks lost for words, and after a moment laughs.)~ = ~I have to admit, that was not entirely what I was expecting.  Perhaps.  I can be harsh and unpredictable at times, I suppose...~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_332
    SAY ~If you wish.~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_333
    SAY ~(Iylos looks thoughtful.) Perhaps you are right.  Something to contemplate.~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_3211
    SAY ~You have a point--Amkethran is at least larger than Candlekeep.  Not that it matters...you spend the majority of your time adventuring, as do I.  We can no longer be classified as 'city dweller' or 'desert dweller' but rather 'adventurers'...strange how these things work.~
    IF ~~ EXIT
  END

  // PID 5--Drow
  IF ~~ PID_Drow
    SAY ~Underneath Anauroch, there are several enclaves of Drow- I was forced to learn their language to survive when I first ventured into the desert.  It was learn Drow, or die.~ 
    ++ ~Tough decision.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Drow_1
    ++ ~Fair enough.~ + PID_Drow_1
    ++ ~Even still...why could you not go somewhere else without Drow?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Drow_2
  END

  IF ~~ PID_Drow_1
    SAY ~Drow is a complicated language, quite gutteral.  It took me months to grasp the rudiments, but once I began to understand it came a lot more easily.  Some of the Drow there were followers of Good, especially the goddess Eilistrae, so it was not so horrible to associate with them.~
    ++ ~Whatever--that doesn't change the fact that the Drow are a terrible people.  I don't understand how you could *live* with them.~ + PID_Drow_11
    ++ ~I see your point.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Drow_11
    ++ ~Why did you have to live with the Drow?  Couldn't you have gone somewhere else?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Drow_2
  END

  IF ~~ PID_Drow_2
    SAY ~The Anauroch desert is huge; the chances of coming upon civilisation or even habitation are extremely slim in such an area.  I was lucky to have discovered the Drow.  Eventually they drove me out, much to my chagrin--but some sympathised with my plight and led me to a small human habitation.  I survived, and grew from the experience--but the Drow aren't all as bad as you might at first think.~
    IF ~~ EXIT
  END

  IF ~~ PID_Drow_11
    SAY ~The Anauroch desert is huge; the chances of coming upon civilisation or even habitation are extremely slim in such an area.  I was lucky to have discovered the Drow- if I had not, I would have surely died.  Eventually they drove me out, much to my chagrin--but some sympathised with my plight and led me to a small human habitation.  I survived, and grew from the experience--but the Drow aren't all as bad as you might at first think.~
    IF ~~ EXIT
  END

  // PID 6--Nyalee
  IF ~~ PID_Nyalee
    SAY ~I was involved in negotiations with her concerning 'her' swamp.  The temple she inhabited was the hereditary property of one of the monks, and she was disgusted by the state which Nyalee had left it in.  It was one of the most complicated situations I had ever been in, and nothing was clean cut.~ 
    ++ ~(Remain silent and wait for him to continue)~ + PID_Nyalee_1
    ++ ~What happened?~ + PID_Nyalee_1
    ++ ~I didn't ask for your life story, Iylos!  Just tell me what happened without all the other additions.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Nyalee_2
  END

  IF ~~ PID_Nyalee_1
    SAY ~Eventually I confronted the old hag about it, and she said that she had obtained the land from the monk's father and that it was rightfully hers.  I did some things that I'm not proud of.~ = ~I couldn't help but feel sorry for the woman once I'd spoken to her more; she was bitter, broken, and was not capable of compassion or empathy due to the choices she made during her life.  But she riled me into a furor with words of poison, and I...I hit her.  I felt bones shatter from the impact, and with a scream of rage she sent the undead, the inhabitants of the swamp after me.~ = ~I fled under the onslaught, and once back in the Monastery I learned a terrible truth--the monk had lied.  She was thrown out from the Monastery once she was discovered, and I was forced to return to Nyalee's swamp to apologise and make recompense for my terrible actions.  She was unconscious, and there were none of her 'friends' to be seen; I placed a potion of healing by her side, 300 or so gold and a small magical trinket which I hoped would help bring back her sanity.~ = ~She awoke, and looked upon me as a stranger; she did not recall why her bones were broken, nor that it was I who had broken them.  She began to babble about her 'son', Yaga Shura, and his betrayal.  She tore the pendant I had given her from her neck and smashed it, swearing as she did so her revenge upon him.~ = ~She had forgotten I was there, so I left as unobtrusively as I could.  I doubt she even recognised me when you spoke to her, but for some reason I suspect she may remember such as you due to your connection with Yaga Shura.~ = ~Strange how these things work...she does not remember anything about the breaking of her bones, but she remembers the giant and his apparent betrayal of her.  She is a sad creature, eternally condemned to hatred and vilification of both herself and her son.~
    ++ ~How...how sad.  I almost feel sorry for her.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_11
    ++ ~She deserved what she got...she sold her heart for life.  She does not deserve pity.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Nyalee_12
    ++ ~How pathetic, that you would lose your temper so easily...and on a defenceless old woman, at that.  I'm disgusted at you, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_13
  END

  IF ~~ PID_Nyalee_2
    SAY ~You asked, <CHARNAME>, so you will listen to what I have to say.~
    IF ~~ + PID_Nyalee_1
  END

  IF ~~ PID_Nyalee_11
    SAY ~You would, wouldn't you?  But it matters naught...what happened happened, and my message remains; you mustn't trust Nyalee, she's crazy.  Let's get moving...but keep my story in mind when dealing with her.  She can change her mind in an instant, and will attack on provocation- and with her 'friends,' the undead, she is no small challenge.~
    ++ ~I'll keep that in mind.  Thank you, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~I think that's the longest speech I've ever heard you say!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_111
    ++ ~I will think on this.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_112
  END

  IF ~~ PID_Nyalee_12
    SAY ~Perhaps, but it matters naught...what happened happened, and my message remains; you mustn't trust Nyalee, she's crazy.  Let's get moving...but keep my story in mind when dealing with her.  She can change her mind in an instant, and will attack on provocation- and with her 'friends' the undead she is no small challenge.~
    ++ ~I'll keep that in mind.  Thank you, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~I think that's the longest speech I've ever heard you say!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_111
    ++ ~I will think on this.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_112
  END

  IF ~~ PID_Nyalee_13
    SAY ~I am not proud of what I did, but it matters naught...what happened happened, and my message remains; you mustn't trust Nyalee, she's crazy.  Let's get moving...but keep my story in mind when dealing with her.  She can change her mind in an instant, and will attack on provocation- and with her 'friends' the undead she is no small challenge.~
    ++ ~I'll keep that in mind.  Thank you, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~I think that's the longest speech I've ever heard you say!~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_111
    ++ ~I will think on this.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_112
  END

  IF ~~ PID_Nyalee_111
    SAY ~Heh, indeed--but it is something which you needed to know about, I felt, so I told you.  Think on it, <CHARNAME>, if only for your own benefit.  Take my advice, and do not trust a word Nyalee says, whatever she may offer or promise.  Let us get going.~
    IF ~~ EXIT
  END

  IF ~~ PID_Nyalee_112
    SAY ~It is something which you needed to know about, I felt, so I told you.  Think on it, <CHARNAME>, if only for your own benefit.  Take my advice, and do not trust a word Nyalee says, whatever she may offer or promise.  Let us get going.~
    IF ~~ EXIT
  END

  // PID 7--Teach Me Drow
  IF ~~ PID_DrowDone
    SAY ~Don't you think you've learnt enough, <CHARNAME>?  (sigh)~ = ~What would you like me to remind you or teach you?~
    ++ ~'Hello, how are you?'~ + RDrow_1
    ++ ~'Drow scum, I hope you burn in hell.'~ + RDrow_2
    + ~Gender([PC],FEMALE)~ + ~ 'On your knees, male!'?~ + RDrow_3
    ++ ~'Wonderful morning, is it not?  And how are the children?'~ + RDrow_4
    ++ ~'Damn.'~ + RDrow_5
    ++ ~Teach me how to say fuck in Drow.  Come on.  Please?~ + RDrow_6
    ++ ~Actually, no thanks.  I don't need it.~ EXIT
  END

  IF ~~ PID_RemindDrow
    SAY ~If you wish.~
    ++ ~'Hello, how are you?'~ + RDrow_1
    ++ ~'Drow scum, I hope you burn in hell.'~ + RDrow_2
    + ~Gender([PC],FEMALE)~ + ~ 'On your knees, male!'?~ + RDrow_3
    ++ ~'Wonderful morning, is it not?  And how are the children?'~ + RDrow_4
    ++ ~'Damn.'~ + RDrow_5
    ++ ~Teach me how to say fuck in Drow.  Come on.  Please?~ + RDrow_6
    ++ ~Actually, no thanks.  I don't need it.~ EXIT
  END

  IF ~~ RDrow_1
    SAY ~'Vendui, lu'oh ph' dos?'~
    IF ~~ EXIT
  END

  IF ~~ RDrow_2
    SAY ~'Ilythiiri srow, Usstan kestal dos flamgra wun uoi'nota.'~
    IF ~~ EXIT
  END

  IF ~~ RDrow_3
    SAY ~'Pholor dosst la'uren, jaluk!'.~
    IF ~~ EXIT
  END

  IF ~~ RDrow_4
    SAY ~'Bronretla kre'tan, zhah ol naut?  Lu'oh ph' l' dalharen?'~
    IF ~~ EXIT
  END

  IF ~~ RDrow_5
    SAY ~ 'Xsa'.~
    IF ~~ EXIT
  END

  IF ~~ RDrow_6
    SAY ~If you must know, it is 'Vith', though Drow do not usually use the word.~ = ~And anticipating your next question--to call someone one is 'Vith'rell'.~
    IF ~~ EXIT
  END

  IF ~~ PID_TeachDrow
    SAY ~I could teach you a little, if I have no alternative.  I prefer not to speak it, but I suppose I can teach you some, at least.~ = ~What would you like to learn how to say?~
    ++ ~How about 'Hello, how are you?'~ + Drow_1
    ++ ~Surprise me.~ + Drow_2
    + ~Gender([PC],FEMALE)~ + ~Perhaps 'On your knees, male!'?~ + Drow_3
    ++ ~'Drow scum, I hope you burn in hell.'~ + Drow_4
    ++ ~'Wonderful morning, is it not?  How are the children?'~ + Drow_5
    ++ ~'Iylos, would you please just teach me the basics?  I'd actually like to know the language, not just bits and pieces of it.~ + Drow_6
    ++ ~I'd like to learn how to swear in Drow.  Mostly so other people don't know what I'm saying when I swear at them.~ + Drow_7
  END

  IF ~~ Drow_1
    SAY ~That is fairly simple.  Repeat after me; 'Vendui, lu'oh ph' dos?'~ = ~It's hard to learn Drow without actually immersing yourself in Drow culture...wait a moment.  You already have.  Didn't that Silver Dragon cast a spell on you to make you appear as Drow, and speak their language?  What happened to it?~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_2
    SAY ~Alright.  But I'm not going to tell you what it means- you can ponder that yourself.~ = ~Dosst heen zhah sreenath, drill xal dosst b'luth'ol zotreth seke.~ = ~It's hard to learn Drow without actually immersing yourself in Drow culture...wait a moment.  You already have.  Didn't that Silver Dragon cast a spell on you to make you appear as Drow, and speak their language?  What happened to it?~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_3
    SAY ~I should have known it would be something like that, <CHARNAME>.  'Pholor dosst la'uren, jaluk!'.~ = ~It's hard to learn Drow without actually immersing yourself in Drow culture...wait a moment.  You already have.  Didn't that Silver Dragon cast a spell on you to make you appear as Drow, and speak their language?  What happened to it?~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_4
    SAY ~'Ilythiiri srow, Usstan kestal dos flamgra wun uoi'nota.'~ = ~It's hard to learn Drow without actually immersing yourself in Drow culture...wait a moment.  You already have.  Didn't that Silver Dragon cast a spell on you to make you appear as Drow, and speak their language?  What happened to it?~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_5
    SAY ~How prosaic.  'Bronretla kre'tan, zhah ol naut?  Lu'oh ph' l' dalharen?'~ = ~It's hard to learn Drow without actually immersing yourself in Drow culture...wait a moment.  You already have.  Didn't that Silver Dragon cast a spell on you to make you appear as Drow, and speak their language?  What happened to it?~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_6
    SAY ~It's hard to learn Drow without actually immersing yourself in Drow culture...wait a moment.  You already have.  Didn't that Silver Dragon cast a spell on you to make you appear as Drow, and speak their language?  What happened to it?~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_7
    SAY ~That would come in handy, I suspect, for one such as you.  Alright...how about we learn a basic one.  Repeat after me: 'Xsa'.~ = ~Put more emphasis on the X.  So it's more like 'ksa'.  That's right.  That means 'damn'.~ = ~Here's another; 'Flamgra wun uoi'nota, nuij.' It means 'burn in hell, fiend.' You may find it useful in our upcoming battles.~
    IF ~~ EXIT
  END

  IF ~~ Drow_61
    SAY ~Ah...no, I don't think I will.  If you want to learn, go back to Ust Natha, or perhaps to some other Drow city.  I do not wish to dirty my tongue with this foul language any more than necessary.~
    IF ~~ EXIT
  END

  IF ~~ Drow_62
    SAY ~You wanted *me* to teach you?  Well, I'm afraid I have to decline.  If you want to learn, go back to Ust Natha, or perhaps to some other Drow city.  I do not wish to dirty my tongue with this foul language any more than necessary, especially if you already know it.~
    IF ~~ EXIT
  END

  IF ~~ Drow_63
    SAY ~Hardly.  Leave me alone, <CHARNAME>--I have far better things to do than have you point out my faults.~
    IF ~~ EXIT
  END

  // PID 8--Relationship
  IF ~~ Relationship
    SAY ~Relationship?  Sexual relationship, you mean to say?~
    ++ ~Well...yeah.~ + R1
    ++ ~No, I mean falling in love with the moon.  Of course I mean sexual relationships.~ + R1
    ++ ~No...another way to phrase it would be; have you ever fallen in love?~ + R2
  END

  IF ~~ R1
    SAY ~Yes, I have.  But only briefly.  It...did not end too happily, for either party.~
    ++ ~What happened?~ + R11
    ++ ~Oh.  Sorry for bringing it up.~ + R12
    ++ ~Hah, bet she couldn't stand you!~ + R13
  END

  IF ~~ R2
    SAY ~I have.  It did not end too happily--for either party.~
    ++ ~What happened?~ + R11
    ++ ~Oh.  Sorry for bringing it up.~ + R12
    ++ ~Hah, bet she couldn't stand you!~ + R13
  END

  IF ~~ R11
    SAY ~It didn't work out.~
    ++ ~That's all?~ + R111
    ++ ~And?  You can't just leave me hanging like this!~ + R111
    ++ ~I'm sorry.~ + R112
    ++ ~Well, la-di-da.  So it didn't work out.  No need to be so emotional about it.~ + R113
  END

  IF ~~ R12
    SAY ~It's alright.  It happened, and there is nothing I can do about it.  It's not something I particularly like to discuss, so if you'll excuse me.~
    IF ~~ EXIT
  END

  IF ~~ R13
    SAY ~*HE* had to leave.~
    ++ ~...He?!~ + R131
    ++ ~Eww!  That's disgusting, Iylos!~ + R132
    ++ ~Aww, how cute!~ + R133
    ++ ~I didn't know you were into guys, Iylos.~ + R134
  END

  IF ~~ R111
    SAY ~I don't feel--comfortable talking about this, <CHARNAME>.  So if you would be so kind as to excuse me, I would greatly appreciate it.~
    IF ~~ EXIT
  END

  IF ~~ R112
    SAY ~No need to be sorry, <CHARNAME>.  It happened, and there is nothing I can do about it.  It's not something I particularly like to discuss, so if you'll excuse me.~
    IF ~~ EXIT
  END

  IF ~~ R113
    SAY ~If you don't want to know, <CHARNAME>, there is a simple solution--don't ask.~
    IF ~~ EXIT
  END

  IF ~~ R131
    SAY ~Yes, he.  Do you have a problem with that?~
    ++ ~Yes!  That's...that's disgusting!~ + R132
    ++ ~No, not at all.  I happen to think it's all kinds of awesome, actually.~ + R1311
    ++ ~Not really.  Just don't...do anything while I'm around.~ + R1312
    ++ ~So *that's* why you're so--so bitter!  You've never been able to come out, your entire life...oh, Iylos...~ + R1313
    ++ ~Yes, but that isn't going to stop me from adventuring with you.  I don't let such things come in the way of a professional relationship.~ + R1314
    + ~Gender([PC],FEMALE)~ + ~Actually, that kind of thing turns me on.~ + R1315
    ++ ~You...you like...guys?  Why didn't you tell me before?~ + R1316
    + ~Gender([PC],MALE)~ + ~Iylos, you never mentioned--I like guys, too!  I mean...~ + R1316
  END

  IF ~~ R132
    SAY ~Then I see no point in continued conversation.~
    IF ~~ DO ~SetGlobal("LK#IylosHappiness","GLOBAL",0) SetGlobal("LK#IylosTalksLess","GLOBAL",1)~ EXIT
  END

  IF ~~ R133
    SAY ~Cute?~ = ~Perhaps.  Well, thank you, I suppose.  I did not mean to let such a thing slip, but at least you aren't terribly fazed by it.  Let us...let us continue on our journey, if we may.  This is not terribly familiar territory, and I- lets just get going.~
    IF ~~ EXIT
  END

  IF ~~ R134
    SAY ~Do you have a problem with that?~
    ++ ~Yes!  That's...that's disgusting!~ + R132
    ++ ~No, not at all.  I happen to think it's all kinds of awesome, actually.~ + R1311
    ++ ~Not really.  Just don't...do anything while I'm around.~ + R1312
    ++ ~So *that's* why you're so--so bitter!  You've never been able to come out, your entire life...oh, Iylos...~ + R1313
    ++ ~Yes, but that isn't going to stop me from adventuring with you.  I don't let such things come in the way of a professional relationship.~ + R1312
    + ~Gender([PC],FEMALE)~ + ~Actually, that kind of thing turns me on.~ + R1314
    ++ ~You...you like...guys?  Why didn't you tell me before?~ + R1315
    + ~Gender([PC],MALE)~ + ~Iylos, you never mentioned--I like guys, too!  I mean...~ + R1316
  END

  IF ~~ R1311
    SAY ~Awesome?~ = ~Perhaps.  Well, thank you, I suppose.  I did not mean to let such a thing slip, but at least you aren't terribly fazed by it.  Let us...let us continue on our journey, if we may.  This is not terribly familiar territory, and I- lets just get going.~
    IF ~~ EXIT
  END

  IF ~~ R1312
    SAY ~Hmph.  I did not mean to let such a thing slip, but at least you aren't terribly fazed by it.  Let us...let us continue on our journey, if we may.  This is not terribly familiar territory, and I- lets just get going.~
    IF ~~ EXIT
  END

  IF ~~ R1313
    SAY ~Hmph...~ = ~I don't require your pity, <CHARNAME>.  And that is--hardly the case.  Must we speak about this?  It is not exactly familiar territory, and I- lets just get going.~
    IF ~~ EXIT
  END

  IF ~~ R1314
    SAY ~That's--that's great, <CHARNAME>, but...ah...don't we have to get going?  Have we got somewhere we need to be?~ = ~We- really should get going.  About now.  Excuse me.~
    IF ~~ EXIT
  END

  IF ~~ R1315
    SAY ~It isn't exactly something one broadcasts world over, <CHARNAME>.  Must we--speak of this?  I did not mean to let such a thing slip, but at least you aren't terribly fazed by it.  Let us...let us continue on our journey, if we may.  This is not terribly familiar territory, and I- lets just get going.~
    IF ~~ EXIT
  END

  IF ~~ R1316
    SAY ~I've noticed.  It isn't exactly something one broadcasts world over, <CHARNAME>--but at least it is, perhaps, something we have in common.~ = ~Now, lets never speak of it again.~
    IF ~~ EXIT
  END

  IF ~~ Relationship2
    SAY ~Yes.  But I'm hardly about to tell you, <CHARNAME>, so begone.~
    IF ~~ EXIT
  END

  // New content (10.4.08)
  IF ~~ situation
    SAY ~My thoughts are my own business, and they would influence your own conclusions.  However, I feel something is amiss--what, I'm not sure.  We should keep our eyes open and ears to the ground, in any case.~
    IF ~~ EXIT
  END

  IF ~~ tease1
    SAY ~(He raises an eyebrow skeptically.) I'm not bald, <CHARNAME>. I shave my head each morning.~
    ++ ~How come I've never seen you actually do it?~ + tease1_1
    ++ ~If you say so.~ EXIT
  END
  
  IF ~~ tease1_1
    SAY ~Each morning I wake up before the sunrise, while you are still snoring.  It always surprises me you do not swallow things in your sleep, with your mouth open like that.~
    ++ ~Sounds like you've done a fair bit of "observing," Iylos...tell me; do you have a crush on me?~ + tease1_2
    ++ ~Hey! Well, at least I'm not the one wearing a dress.~ + tease1_3
    ++ ~Very funny.~ + tease1_4
  END
  
  IF ~~ tease1_2
    SAY ~Hardly.  The very fact I'm speaking with you is some sort of miracle, I imagine; as I have said before, I would much rather be elsewhere.  Preferably without your presence to mar the atmosphere.~
    IF ~~ EXIT
  END
  
  IF ~~ tease1_3
    SAY ~You know full well this is no dress, Bhaalspawn.  If your only intent is to insult me, then I suggest you leave me be.  I would not deign to react to such idiocy.~
    IF ~~ EXIT
  END
  
  IF ~~ tease1_4
    SAY ~I rather thought so.~
    IF ~~ EXIT
  END
  
  IF ~~ tease2
    SAY ~What masterful wit, <CHARNAME>.  Perhaps next time you will compare me to a duck?  At least it might be mildly entertaining to watch you trip over your tongue.~
    IF ~~ EXIT
  END
  
  IF ~~ tease3
    SAY ~(Iylos snorts derisively.) And here I thought you had some maturity.  How foolish of me.~
    IF ~~ EXIT
  END
  
  IF ~~ paladins
    SAY ~Paladins?  Righteous men with too little occuring between their ears, or at least, that is the case of many.  There are few paladins I have met who see the subtle greys, the tonal shifts which all too often occur, and that makes them unable to truly understand good and evil.  They see it in stark black and white, good and evil, when there is so much more at work.~
    IF ~~ EXIT
  END
  
  IF ~~ druids
    SAY ~Of all people, I identify with druids the most.  They understand the need for solitude, what can be learnt from silence and contemplation and careful consideration.  Nature is a powerful and wondrous thing, and they understand its importance in the grand scheme of things.  I feel that they do more good than a lot of people, especially those who give no thought to what they kill.~
    IF ~~ EXIT
  END
  
  IF ~~ bards
    SAY ~I find them somewhat useless and annoying, with their constant songs and poetry.  I have little respect for those who do not spend their time appropriately.~
    IF ~~ EXIT
  END
  
  IF ~~ berserkers
    SAY ~I can identify with the rage they justify themselves with, but I don't think it is the correct way to channel rage.  Some berserkers believe that their rage is the most pure emotion, and in a way, I can see what they mean; but I do not think that it is the best and most efficient way to do battle.~
    IF ~~ EXIT
  END
  
  IF ~~ magic
    SAY ~Magic?  Is not each day a work of magic, <CHARNAME>?  There are so many different forms of magic, and yet you limit yourselves to one.  I believe magic is a very powerful force, and it can do great things.  But it can also do great evil, and corrupt.~ = ~So in retrospect, I'm in two minds about what *you* term as magic.  On one hand, it can be a force of great good and great evil, but on the other, it cheapens the miracles of every day.  Childbirth, life, death--these are miracles which occur constantly, and yet we do not regard them as such, because we are so preoccupied with the idea of magic.~ = ~Is that a good thing?  You tell me.~
    IF ~~ EXIT
  END
  
  IF ~~ minsc
    SAY ~He is a good man with little in the way of intelligence, but he has a great heart.  I'm not sure what to think of his--hamster, Boo, but I have seen a great many things, and it would not particularly surprise me if Minsc's announcements about him proved to be true.~
    IF ~~ EXIT
  END
  
  IF ~~ thievery
    SAY ~I do not agree with the idea of someone using a lockpick to enter a house uninvited, but I believe sometimes such a skill is necessary to one's survival.  While I may not agree with a thieve's doctrine, they can be useful, when the situation calls for it.~
    IF ~~ EXIT
  END

END