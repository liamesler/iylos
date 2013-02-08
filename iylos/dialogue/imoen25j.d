//-------------------------------------
// Imoen Dialogue with PC about Iylos
//-------------------------------------
APPEND IMOEN25J

  IF WEIGHT #-1 ~Global("LK#Iylos_ImmyTalk","GLOBAL",1)~ LK#Imoen_Talk
  SAY ~Hey there, little <PRO_BROTHERSISTER>, how're you feeling?  That Iylos getting you down?~
  ++ ~Hardly.  He's nothing more than an annoyance.~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_1
  ++ ~As usual...he's just so frustrating!  Why can't he understand that I'm not evil, and that I don't want to murder everyone in sight?!~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_2
  ++ ~No, its just...~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_3
  ++ ~No, but I think I'm getting him down, just by being alive.  ~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_2
  ++ ~How're *you*, Imoen?  I'm not the one who hasn't slept properly in a week...~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_4
  ++ ~Iylos?  Imoen, we're in the middle of a war, and you ask whether *Iylos* is annoying me?~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_2
  ++ ~Can we talk later?  I'm kind of busy at the moment, Imoen.~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_5
  END

  IF ~~ LK#IT_1
    SAY ~He sure is!  Keeps trying to get me to do some meditation crap, sheesh--what could be more boring?~
    ++ ~Not much that I can think of, no.~ + LK#IT_11
    ++ ~Meditation is actually quite interesting, Imoen, if you'd just give it a try.~ + LK#IT_12
    ++ ~Yeah.  He's a bit of a bore, really.  I'm not really sure why I keep him--I guess he's just a good fighter.  Not good for much else, though--'specially not conversation!~ + LK#IT_13
  END

  IF ~~ LK#IT_2
    SAY ~Heh.  He keeps trying to get me to do some meditation crap, sheesh--what could be more boring?~
    ++ ~Not much that I can think of, no.~ + LK#IT_11
    ++ ~Meditation is actually quite interesting, Imoen, if you'd just give it a try.~ + LK#IT_12
    ++ ~Yeah.  He's a bit of a bore, really.  I'm not really sure why I keep him--I guess he's just a good fighter.  Not good for much else, though--'specially not conversation!~ + LK#IT_13
  END

  IF ~~ LK#IT_3
    SAY ~Just what?~
    ++ ~The nightmares...they're back again.  And worse than before.~ + LK#IT_31
    ++ ~Nothing.  How're *you*?~ + LK#IT_4
    ++ ~This whole war...all the fighting, it's just getting me down.  I'm not sure what to do--I feel like I'm being led around by the nose, and I can't do anything about it.~ + LK#IT_32
    ++ ~Bhaal.  The prophecy.~ + LK#IT_33
  END

  IF ~~ LK#IT_4
    SAY ~I'm fine.  Really!~ = ~Okay, okay!  Sheesh.  You'd think sometimes that you were my mother!~ = ~It's just the nightmares...they keep coming, whatever I do.  I've tried milk before sleeping, praying to whatever god would listen--not that any were, obviously, making myself so tired I couldn't dream...but the dreams always come.~ = ~(sigh) I guess I'll just have to get used to it.  You did, right?  So it's not impossible.~
    ++ ~No, it's not.  And I'm here with you, remember?~ + LK#IT_41
    ++ ~It gets hard, sometimes.  To keep going on.~ + LK#IT_42
    ++ ~Imoen...I've been having nightmares for almost a year, and I'm still not used to it.  I don't think I ever *will* get used to it.~ + LK#IT_43
  END
  
  IF ~~ LK#IT_5
    SAY ~Sure thing, little <PRO_BROTHERSISTER>.  Just give me a poke when you're not so busy trying to be serious!~
    IF ~~ THEN EXIT
  END

  IF ~~ LK#IT_11
    SAY ~Anyway--just wanted to check in on you, make sure you were doing okay.  Because sometimes you just get this...this far away look on your face, and I can't be there with you.  I'm your sister, I should be able to...but I can't.~ = ~And it hurts to see you hurting.  Heh, it's silly, but its true.  I hate to see you unhappy, <CHARNAME>--I do love you, you know.~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_12
    SAY ~Suure it is.  Just like pancakes taste like snail!~ = ~Anyway, I just wanted to check in on you, make sure you were doing okay.  Because sometimes you just get this...this far away look on your face, and I can't be there with you.  I'm your sister, I should be able to...but I can't.~ = ~And it hurts to see you hurting.  Heh, it's silly, but its true.  I hate to see you unhappy, <CHARNAME>--I do love you, you know.~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_13
    SAY ~You've got that right!~ = ~Anyway, I just wanted to check in on you, make sure you were doing okay.  Because sometimes you just get this...this far away look on your face, and I can't be there with you.  I'm your sister, I should be able to...but I can't.~ = ~And it hurts to see you hurting.  Heh, it's silly, but its true.  I hate to see you unhappy, <CHARNAME>--I do love you, you know.~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_31
    SAY ~Th-they get worse?  Gods, if you're like this now, what'll I be like in a month's time?~ = ~Uhm...~ = ~I just wanted to check in on you, make sure you were doing okay.  Because sometimes you just get this...this far away look on your face, and I can't be there with you.  I'm your sister, I should be able to...but I can't.~ = ~And it hurts to see you hurting.  Heh, it's silly, but its true.  I hate to see you unhappy, <CHARNAME>--I do love you, you know.~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_32
    SAY ~I guess there isn't much you can do about it, is there?~ = ~Oh, poor little <CHARNAME>...~ = ~I just wanted to check in on you, make sure you were doing okay.  Because sometimes you just get this...this far away look on your face, and I can't be there with you.  I'm your sister, I should be able to...but I can't.~ = ~And it hurts to see you hurting.  Heh, it's silly, but its true.  I hate to see you unhappy, <CHARNAME>--I do love you, you know.~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_33
    SAY ~So, the usual, then.  (sigh)~ = ~The nightmares are the worst for me...they keep coming, whatever I do.  I've tried milk before sleeping, praying to whatever god would listen--not that any were, obviously, making myself so tired I couldn't dream...but the dreams always come.~ = ~(sigh) I guess I'll just have to get used to it.  You did, right?  So it's not impossible.~
    ++ ~No, it's not.  And I'm here with you, remember?~ + LK#IT_41
    ++ ~It gets hard, sometimes.  To keep going on.~ + LK#IT_42
    ++ ~Imoen...I've been having nightmares for almost a year, and I'm still not used to it.  I don't think I ever *will* get used to it.~ + LK#IT_43
  END

  IF ~~ LK#IT_41
    SAY ~I know.  I love you, you know, <CHARNAME>.~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_42
    SAY ~But you keep going.  You can't not.~ = ~I just wanted to check in on you, make sure you were doing okay.  Because sometimes you just get this...this far away look on your face, and I can't be there with you.  I'm your sister, I should be able to...but I can't.~ = ~And it hurts to see you hurting.  Heh, it's silly, but its true.  I hate to see you unhappy, <CHARNAME>--I do love you, you know.~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_43
    SAY ~Heh, if you're like this now, what'll I be like in a month's time?~ = ~Uhm...~ = ~I just wanted to check in on you, make sure you were doing okay.  Because sometimes you just get this...this far away look on your face, and I can't be there with you.  I'm your sister, I should be able to...but I can't.~ = ~And it hurts to see you hurting.  Heh, it's silly, but its true.  I hate to see you unhappy, <CHARNAME>--I do love you, you know.~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_111
    SAY ~I'm glad--cos it might take a bit of work to get the 'Kick me' sign off your back.  (giggle)~ = ~Doesn't change the fact that I love you, though.  Even if you are an easy mark.~
    IF ~~ EXIT
  END

  IF ~~ LK#IT_112
    SAY ~Ahh...nothing.~ = ~Except for the, you know, 'kick me' sign on your back.  May take a little bit of work to get that off.~ = ~Doesn't change the fact that I love you, though.  Even if you are an easy mark.~
    IF ~~ EXIT
  END

  IF ~~ LK#IT_113
    SAY ~Aaah!  No, no!  (giggle)~ = ~Haha, I got away--catch me if you ca-an!~ = ~Except for the, you know, 'kick me' sign on your back.  May take a little bit of work to get that off.~ = ~Doesn't change the fact that I love you, though.  Even if you are an easy mark.~
    IF ~~ EXIT
  END

END