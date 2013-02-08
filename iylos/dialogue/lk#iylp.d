// Leaving/Rejoining Dialogues
BEGIN LK#IYLP

  // Leaving
  IF ~Global("LK#IylosJoined","GLOBAL",1)~ LeaveGroup
    SAY ~You wish me to leave, <CHARNAME>?~ [LK#IBLN]
    ++ ~Yes.  I'm sorry Iylos, but I just don't have the room...is there somewhere you could go where I could perhaps pick you up at a later date?~ + pickup
    ++ ~No, sorry, my mistake.  Come back into the party.~ DO ~JoinParty() SetGlobal("LK#IylosJoined","GLOBAL",1)~ EXIT
  END

  IF ~~ pickup
    SAY ~I will be out the front of the Monastery of Amkethran if have further use of me, <CHARNAME>--but rest assured, we will be watching.  Goodbye.~
    IF ~~ DO ~SetGlobal("LK#IylosLeftGood","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  // Rejoining
  IF ~Global("LK#IylosJoined","GLOBAL",0)~ JoinGroup
    SAY ~So you return, <CHARNAME>.  Do you need me, or did you stop by for idle chatter?~ [LK#IBLN]
    ++ ~Idle chatter, I'm afraid.  How are you?~ + chatter
    ++ ~I'd like you to rejoin, Iylos, if you don't mind.~ + rejoin
    ++ ~Just wanted to check to see if you were actually here, and that you weren't spying on me or otherwise.~ + spying
  END

  IF ~~ chatter
    SAY ~Well enough.  You had best be going--the war won't wait for you.~
    ++ ~Of course.  Goodbye!~ EXIT
    ++ ~Wait!  I'd like you to rejoin the party.~ + rejoin
  END

  IF ~~ rejoin
    SAY ~If you wish.~ [LK#I221]   IF ~~ DO ~JoinParty() SetGlobal("LK#IylosJoined","GLOBAL",1)~ EXIT
  END

  IF ~~ spying
    SAY ~Nothing of the sort.  There are others watching you, though, <CHARNAME>--beware.~
    ++ ~What others?~ + others
    ++ ~Thanks for the warning.~ + warning
    ++ ~I guess I'll be going, then.  Bye!~ + bye
  END

  IF ~~ others
    SAY ~I'm not sure, but I--and others of my acquaintance--have seen them.  Beware.  You had best be going--the war won't wait for you.~
    ++ ~Of course.  Goodbye!~ EXIT
    ++ ~Wait!  I'd like you to rejoin the party.~ + rejoin
  END

  IF ~~ warning
    SAY ~No problems.  Goodbye, <CHARNAME>.~ [LK#I224]
    IF ~~ EXIT
  END

  IF ~~ bye
    SAY ~Goodbye, <CHARNAME>.~ [LK#I25]
    IF ~~ EXIT
  END