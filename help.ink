// JavaScript functions
EXTERNAL showImage(file)

VAR egg_shells = true
VAR band_aid = true
VAR hair = true
VAR stuffed_dog = true
VAR baby_doll = true
VAR mannequin_torso = true

-> main

== main

It’s your first day at your brand new job! You landed a part-time gig at a recycling center as a “Rubbish Overseer”... whatever that means. 

* [Clock in] You enter the building and clock in.

Even though the recycling center branch is new, the building it’s in is old and smells weird. Apparently it used to be an alchemy lab.

Your workstation is a small desk next to a conveyor belt. In front of the desk is a wall with two chutes labeled “Reduce” and “Reuse.” On your desk is a sticky note and an instruction manual.

"Welcome to the newest branch of the Three R's Recycling Facility! We applaud your dedication to creating a more sustainable future. 
You are the first volunteer at our newest location.
Please read all instructions carefully before carrying out your assigned responsibilities."

Wait. Volunteer? You thought you were getting paid for this! 

->act1

== act1

{(egg_shells || band_aid || hair || stuffed_dog || baby_doll || mannequin_torso):
    {Before you can make a complaint or stomp off, the conveyor belt starts moving. Six objects emerge from a hole in the wall.|Now that this junk is here, you feel like it's your problem.}
}

<-inventory

{ not (egg_shells || band_aid || hair || stuffed_dog || baby_doll || mannequin_torso):
    ->act1end
- else:
    The instruction manual on your desk says:

    "If something is useless, put it in the chute marked 'Reduce' to trash it!
    If something is still in good condition, put it in the chute marked 'Reuse', and it will be redistributed!”

    <-actions
}

== inventory

{egg_shells:
    \- Egg Shells

    RRR_Eggshell.png
}
{baby_doll:
    \- Baby Doll

    RRR_Baby.png
}
{hair:
    \- Clump of Hair

    RRR_Hair.png
}
{stuffed_dog:
    \- Stuffed Dog

    RRR_Dog.png
}
{band_aid:
    \- Dirty Band-Aid

    RRR_Bandaid.png
}
{mannequin_torso:
    \- Mannequin torso

    RRR_Mannequin.png
}

== act1end

After sorting everything into (what you hope is) the appropriate chutes, the conveyor belt starts moving again. 

->act2
== actions

+ [Reduce] -> reduce
+ [Reuse] -> reuse
+ {act2} [Recycle] -> recycle

== reduce

You prepare to put something in the 'Reduce' chute:

+ {egg_shells} [Egg Shells]
    You dump the smelly egg shells in the 'Reduce' chute.
    ~ egg_shells = false
+ {baby_doll} [Baby Doll]
    This baby doll is in perfectly good condition!
+ {hair} [Clump of Hair]
    You dump the clump of hair in the 'Reduce' chute.
    ~ hair = false
+ {stuffed_dog} [Stuffed Dog]
    This stuffed dog is in perfectly good condition!
+ {band_aid} [Dirty Band-Aid]
    You dump the dirty Band-Aid in the 'Reduce' chute, trying not to think about what was on it or where it came from.
    ~ band_aid = false
+ {mannequin_torso} [Mannequin Torso]
    This mannequin torso is in perfectly good condition!
+ [Never mind] ->back_to_act

- ->reduce

== back_to_act
{act3:
    ->act3
}
{act2:
    ->act2
}
->act1

== reuse

You prepare to put something in the 'Reuse' chute:

+ {egg_shells} [Egg Shells]
    No one wants to reuse these smelly egg shells!
+ {baby_doll} [Baby Doll]
    Someone out there will appreciate this adorable, not creepy baby doll! You put it in the 'Reuse' chute.
    ~ baby_doll = false
+ {hair} [Clump of Hair]
    No one wants this clump of hair! It probably has lice!
+ {stuffed_dog} [Stuffed Dog]
    Someone out there will appreciate this stuffed dog! You put it in the 'Reuse' chute.
    ~ stuffed_dog = false
+ {band_aid} [Dirty Band-Aid]
    No one wants to reuse this dirty Band-Aid! Gross!
+ {mannequin_torso} [Mannequin Torso]
    Someone out there will appreciate this mannequin torso! You put it in the 'Reuse' chute.
    ~ mannequin_torso = false
+ [Never mind] ->back_to_act

- ->reuse

-> DONE

== recycle
-> DONE

== act2

A strange smell is emanating from the two chutes in front of you.

{act2 == 1:
    As you turn to look at the conveyor belt, you knock the instruction manual aside with your elbow. There’s another note underneath. 

    “ATTENTION PERSONNEL: DUE TO A MISCOMMUNICATION, THE REUSE AND REDUCE CHUTES HAVE BEEN REDIRECTED TO THE OLD HOMUNCULUS NURSERY. PLEASE REFRAIN FROM USING THESE CHUTES UNTIL THIS ERROR HAS BEEN CORRECTED.”

    Oh, shit. What is a “Homunculus Nursery?”

    “ATTENTION PERSONNEL: DUE TO A MISCOMMUNICATION, THE REUSE AND REDUCE CHUTES HAVE BEEN SWITCHED. PLEASE REFRAIN FROM USING THESE CHUTES UNTIL A CORRECTION HAS BEEN MADE.”

    Whatever, it’s probably fine. 

    More objects emerge from the conveyor belt.
- else:
    You turn back to the objects on the conveyor belt.
}

<- inventory

== act3

-> DONE