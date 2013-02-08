//Contents

// Joining Dialogue
// Leaving/Rejoining Dialogues

// PC Dialogues 1-4
// PC Friendship 5-7
// Non-Friendship Dialogue (PC 5)
// Scenery 1--Pocket Plane
// Plot 1--Death of a Pocket Plane
// Plot 2--3 Bhaalspawn Dead
// Plot 3--4 Bhaalspawn Dead
// Plot 4--Balthazar Dead

// SoA Dialogues
BEGIN ~LK#IYSO~
BEGIN ~BLK#ISO~
BEGIN ~LK#IYSJ~
BEGIN ~LK#IYSP~

// ToB Non-party dialogue
BEGIN ~LK#IYLO~

  IF ~NumTimesTalkedTo(0)~ Intro
    SAY ~<CHARNAME>, <PRO_SONDAUGHTER> of Gorion the Sage, Slayer of Sarevok Anchev, Destructor of Joneleth Irenicus...Bhaalspawn.~ [LK#IBLN]
    ++ ~Who are you?~ + Intro_1
    ++ ~Have I really gained so many titles?~ + Intro_2
    ++ ~Those aren't exactly flattering titles, are they?  (sigh) Not much I can do about it now, I suppose...how can I help you?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + Intro_1
    ++ ~Yes, I'm a Bhaalspawn.  Do you have a problem with that?~ + Intro_3
    ++ ~I see.  What business do you have with me, Lord...?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + Intro_1
    ++ ~Yes, yes, I am truly magnificent!  But you forgot Terror of the Sword Coast, Scourge of the Sea of Swords and the Savior of Baldur's Gate.  If you cannot remember that, Your Excellency will do.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + Intro_1
  END

  IF ~~ Intro_1
    SAY ~I am Iylos Mirdan, and I have been sent to join you by one who has been watching you closely.  I am to discover your motives and see if you are amiable to our interests.  I am a monk of no small regard--I'm quite sure I could help one such as you, Bhaalspawn.~ [LK#I202]
    ++ ~What are you trying to imply, monk?~ + Intro_11
    ++ ~Well, what are we standing around talking for!  Get in line, then.~ + Intro_111
    ++ ~I see.  Well, I have no need for an arrogant, annoying monk at the moment--shall I notify you when I do need one?~ + Intro_12
    ++ ~I'm sure you would be helpful--but who are these who watch me?  Why?~ + Intro_13
    ++ ~Such as I?  Are you telling me that I am weak, or powerless, perhaps?  I have powers beyond your wildest dreams, fool.~ + Intro_14
  END

  IF ~~ Intro_2
    SAY ~I am Iylos Mirdan, and I have been sent to join you by one who has been watching you closely.  I am to discover your motives and see if you are amiable to our interests.  I am a monk of no small regard--I'm quite sure I could help one such as you, Bhaalspawn.~ [LK#I202]
    ++ ~What are you trying to imply, monk?~ + Intro_11
    ++ ~Well, what are we standing around talking for!  Get in line, then.~ + Intro_111
    ++ ~I see.  Well, I have no need for an arrogant, annoying monk at the moment--shall I notify you when I will need one?~ + Intro_12
    ++ ~I'm sure you would be helpful--but who are these who watch me?  Why?~ + Intro_13
    ++ ~Such as I?  Are you telling me that I am weak, or powerless, perhaps?  I have powers beyond your wildest dreams, fool.~ + Intro_13
  END

  IF ~~ Intro_3
    SAY ~I am Iylos Mirdan, and I was sent by one who is watching you to join you, discover your motives, and to discover whether you are amiable to our interests.  I am a monk of no small regard--I'm quite sure I could help one such as you, Bhaalspawn.~ [LK#203]
    ++ ~What are you trying to imply, monk?~ + Intro_11
    ++ ~Well, what are we standing around talking for!  Get in line, then.~ + Intro_111
    ++ ~I see.  Well, I have a need for an arrogant, annoying monk at the moment--shall I notify you when I do need one?~ + Intro_12
    ++ ~I'm sure you would be helpful--but who are these who watch me?  Why?~ + Intro_13
    ++ ~Such as I?  Are you telling me that I am weak, or powerless, perhaps?  I have powers beyond your wildest dreams, fool.~ + Intro_12
  END

  IF ~~ Intro_11
    SAY ~That you could use some help.  You are in a situation you know almost nothing about; you are being attacked from all sides, and you do not know who is friend and who is foe.  As I have said, I am a monk of no small influence; I know this area well, and can help you if you know a way out of this place.~ [LK#I204]  = ~I know of those that follow you, attempt to kill you.  Illasera, for one.~ [LK#I205]
    ++ ~What's the catch?~ + Intro_111
    ++ ~You seem to speak truth...but what would you gain from joining me?~ + Intro_111
    ++ ~(Remain silent)~ + Intro_111
    ++ ~You know of Illasera?~ + Intro_112
  END

  IF ~~ Intro_12
    SAY ~Hmph.~ = ~You are in a situation you know almost nothing about; you are being attacked from all sides, and you do not know who is friend and who is foe.  As I have said, I am a monk of no small influence; I know this area well, and can help you if you know a way out of this place.~ [LK#I206]  = ~I know of those that follow you, attempt to kill you.  Illasera, for one.~ [LK#I205]
    ++ ~What's the catch?~ + Intro_111
    ++ ~You seem to speak truth...but what would you gain from joining me?~ + Intro_111
    ++ ~(Remain silent)~ + Intro_111
    ++ ~You know of Illasera?~ + Intro_112
  END

  IF ~~ Intro_13
    SAY ~That is not your concern at the current time--you are in a situation you know almost nothing about; you are being attacked from all sides, and you do not know who is friend and who is foe.  As I have said, I am a monk of no small influence; I know this area well, and can help you if you know a way out of this place.~ [LK#I207]  = ~I know of those that follow you, attempt to kill you.  Illasera, for one.~ [LK#I205]
    ++ ~What's the catch?~ + Intro_111
    ++ ~You seem to speak truth...but what would you gain from joining me?~ + Intro_111
    ++ ~(Remain silent)~ + Intro_111
    ++ ~You know of Illasera?~ + Intro_112
  END

  IF ~~ Intro_14
    SAY ~You are in a situation you know almost nothing about; you are being attacked from all sides, and you do not know who is friend and who is foe.  As I have said, I am a monk of no small influence; I know this area well, and can help you if you know a way out of this place.~ [LK#I206]  = ~I know of those that follow you, attempt to kill you.  Illasera, for one.~ [LK#I205]
    ++ ~What's the catch?~ + Intro_111
    ++ ~You seem to speak truth...but what would you gain from joining me?~ + Intro_111
    ++ ~(Remain silent)~ + Intro_111
    ++ ~You know of Illasera?~ + Intro_112
  END

  IF ~~ Intro_111
    SAY ~I am here to judge if you are worthy of our help.  If I find that you are deserving of our aid, then I shall make certain that you receive any aid that you require.  You are free to refuse this assistance of course, but regardless of your decision, know that we *will* be watching you.~ [LK#I208]
    ++ ~Fine!  Come with me...for now.~ + Intro_1111
    ++ ~Join with me, then.~ + Intro_1111
    ++ ~I...don't think so.  No thanks.~ + Intro_1112
    ++ ~Free to make a decision?  It certainly doesn't *sound* like it...~ + Intro_1113
    ++ ~Do you really think me that foolish?  I will not accept an offer which is so obviously strewn with subterfuge...~ + Intro_1112
  END

  IF ~~ Intro_112
    SAY ~Yes, I know of Illasera.  I know of others who are trying to kill you, as well.~ [LK#I209]  = ~I am also here to judge if you are worthy of our help.  If I find that you are deserving of our aid, then I shall make certain that you receive any aid that you require.  You are free to refuse this assistance of course, but regardless of your decision, know that we *will* be watching you.~ [LK#I210]
    ++ ~Fine!  Come with me...for now.~ + Intro_1111
    ++ ~Join with me, then.~ + Intro_1111
    ++ ~I...don't think so.  No thanks.~ + Intro_1112
    ++ ~Free to make a decision?  It certainly doesn't *sound* like it...~ + Intro_1113
    ++ ~Do you really think me that foolish?  I will not accept an offer which is so obviously strewn with subterfuge...~ + Intro_1112
  END

  IF ~~ Intro_1111
    SAY ~You will not regret this decision.~ [LK#I211]   IF ~~ THEN DO ~JoinParty() SetGlobal("LK#IylosJoined","GLOBAL",1)~ EXIT
  END

  IF ~~ Intro_1112
    SAY ~You are quite sure?~ [LK#I212]
    ++ ~Yes.~ + Intro_11121
    ++ ~Actually, I've changed my mind...you can come into the group as long as there is no foul play involved.  Deal?~ + Intro_11122
  END

  IF ~~ Intro_1113
    SAY ~You are always free to make decisions, Bhaalspawn.~ [LK#I213]  = ~So, do you wish for help, or not?~ [LK#I214]
    ++ ~I would appreciate the help.~ + Intro_1111
    ++ ~Bah, I do NOT wish any help from such as you.  Leave me be, monk!~ + Intro_1112
  END

  IF ~~ Intro_11121
    SAY ~Fine.  Rest assured, I will be watching...I, and many others.  Goodbye, <CHARNAME>.~ [LK#I215]
    IF ~~ DO ~SetGlobal("LK#IylosLeftGood","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ Intro_11122
    SAY ~Fine.  You will not regret this decision.~ [LK#I216]
    IF ~~ DO ~JoinParty() SetGlobal("LK#IylosJoined","GLOBAL",1)~ EXIT
  END