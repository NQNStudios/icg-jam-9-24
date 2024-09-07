// JavaScript functions
EXTERNAL showImage(file)

VAR egg_shells = true
VAR band_aid = true
VAR hair = true
VAR stuffed_dog = true
VAR baby_doll = true
VAR mannequin_torso = true
VAR soup_can = false
VAR marbles = false
VAR tennis_ball = false
VAR engagement_ring = false
VAR plastic_flowers = false
VAR slingshot = false
VAR combine1 = ""
VAR combine2 = ""
VAR combine_swap = ""

-> main

== main

It’s your first day at your brand new job! You landed a part-time gig at a recycling center as a “Rubbish Overseer”... whatever that means. 

* [Clock in] You enter the building and clock in.

- Even though the recycling center branch is new, the building it’s in is old and smells weird. Apparently it used to be an alchemy lab.

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

{not (egg_shells || band_aid || hair || stuffed_dog || baby_doll || mannequin_torso):
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
{soup_can:
    \- Soup Can

    RRR_Can.png
}
{tennis_ball:
    \- Tennis Ball

    RRR_Tennis.png
}
{engagement_ring:
    \- Engagement Ring

    RRR_Ring.png
}
{marbles:
    \- Marbles

    RRR_Marbles.png
}
{plastic_flowers:
    \- Plastic Flowers

    RRR_Flowers.png
}
{slingshot:
    \- Slingshot

    RRR_Slingshot.png
}
-> DONE
== act1end

After sorting everything into (what you hope is) the appropriate chutes, the conveyor belt starts moving again. 

->act2
== actions

{act2:
    Well... if you can’t reduce or reuse these... the only option left is to recycle them.

    There’s an old machine in the corner of the room, left over from when this building was an alchemy lab. It has two input slots and one export slot. 

    Maybe it combines two items into one? That’s how alchemy works, right?
}

+ {not act2} [Reduce] -> reduce
+ {not act2} [Reuse] -> reuse
+ {act2} [Recycle] -> recycle

-> DONE
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

You prepare to put the first item in the Recycle machine:

+ {soup_can} [Soup Can]
    You put the soup can in the first slot.
    ~ combine1 = "soup_can"
    ~ soup_can = false
+ {tennis_ball} [Tennis Ball]
    You put the tennis ball in the first slot.
    ~ combine1 = "tennis_ball"
    ~ tennis_ball = false
+ {engagement_ring} [Engagement Ring]
    You put the engagement ring in the first slot.
    ~ combine1 = "engagement_ring"
    ~ engagement_ring = false
+ {marbles} [Marbles]
    You put the marbles in the first slot.
    ~ combine1 = "marbles"
    ~ marbles = false
+ {plastic_flowers} [Plastic Flowers]
    You put the plastic flowers in the first slot.
    ~ combine1 = "plastic_flowers"
    ~ plastic_flowers = false
+ {slingshot} [Slingshot]
    You put the slingshot in the first slot.
    ~ combine1 = "slingshot"
    ~ slingshot = false

- You prepare to put the second item in the Recycle machine:

+ {soup_can} [Soup Can]
    You put the soup can in the second slot.
    ~ combine2 = "soup_can"
    ~ soup_can = false
+ {tennis_ball} [Tennis Ball]
    You put the tennis ball in the second slot.
    ~ combine2 = "tennis_ball"
    ~ tennis_ball = false
+ {engagement_ring} [Engagement Ring]
    You put the engagement ring in the second slot.
    ~ combine2 = "engagement_ring"
    ~ engagement_ring = false
+ {marbles} [Marbles]
    You put the marbles in the second slot.
    ~ combine2 = "marbles"
    ~ marbles = false
+ {plastic_flowers} [Plastic Flowers]
    You put the plastic flowers in the second slot.
    ~ combine2 = "plastic_flowers"
    ~ plastic_flowers = false
+ {slingshot} [Slingshot]
    You put the slingshot in the second slot.
    ~ combine2 = "slingshot"
    ~ slingshot = false

- { combine2 == "soup_can" || combine2 == "tennis_ball" || combine2 == "plastic_flowers":
    ~ combine_swap = combine1
    ~ combine1 = combine2
    ~ combine2 = combine_swap
    }

{
    - combine1 == "soup_can" && combine2 == "marbles":
        You insert the soup can and the marbles into the machine. It spits out the same can, except now it’s sealed and the marbles are gone. 
        You pick the can up. No, the marbles aren’t gone, they’re just inside the can now. They make a rattling sound as you shake the can around. It’s fun, but it sort of makes you feel like a baby. 
    - combine1 == "tennis_ball" && combine2 == "slingshot":
        You place the tennis ball and the slingshot into the machine. After a few seconds, the machine gives them back, but with the tennis ball slotted into the slingshot. 
        This might come in handy if any giants or dogs suddenly show up. Or giant dogs. 
    - combine1 == "plastic_flowers" && combine2 == "engagement_ring":
        You put the plastic flowers and the engagement ring into the machine. The flowers get stuck in the chute as the machine pushes them back out. The ring is now wrapped around the flowers’ stems. 
        This would be a good gift for your girlfriend… if you had a girlfriend.
    - else:
        This doesn’t seem right. The machine doesn’t move, like it’s rejecting the objects. You take them back and try again. 

        {combine1 == "soup_can" || combine2 == "soup_can":
            ~soup_can = true
        }
        {combine1 == "tennis_ball" || combine2 == "tennis_ball":
            ~tennis_ball = true
        }
        {combine1 == "plastic_flowers" || combine2 == "plastic_flowers":
            ~plastic_flowers = true
        }
        {combine2 == "marbles" || combine1 == "marbles":
            ~marbles = true
        }
        {combine2 == "engagement_ring" || combine1 == "engagement_ring":
            ~engagement_ring = true
        }
        {combine2 == "slingshot" || combine1 == "slingshot":
            ~slingshot = true
        }
        ->recycle
}

{ not (soup_can || tennis_ball || plastic_flowers || marbles || slingshot || engagement_ring):
->act3
}

->recycle


== act2

A strange smell is emanating from the two chutes in front of you.

{act2 == 1:
    As you turn to look at the conveyor belt, you knock the instruction manual aside with your elbow. There’s another note underneath. 

    “ATTENTION PERSONNEL: DUE TO A MISCOMMUNICATION, THE REUSE AND REDUCE CHUTES HAVE BEEN REDIRECTED TO THE OLD HOMUNCULUS NURSERY. PLEASE REFRAIN FROM USING THESE CHUTES UNTIL THIS ERROR HAS BEEN CORRECTED.”

    Oh, shit. What is a “Homunculus Nursery?”

    Whatever, it’s probably fine. 

    More objects emerge from the conveyor belt.

    ~ soup_can = true
    ~ marbles = true
    ~ tennis_ball = true
    ~ engagement_ring = true
    ~ plastic_flowers = true
    ~ slingshot = true
- else:
    You turn back to the objects on the conveyor belt.
}

<- inventory
<- actions

->DONE

== act3
Now, instead of six random objects, you now have three even more random objects. What now?

{act3 == 1:
    Before you can check your instruction manual again, you hear a thumping sound coming from the chute marked “REDUCE”

    Uh oh. 

    From the mouth of the chute emerges a baby doll. It’s moving all on its own, and crawling right towards you. 
- else:
    The baby doll is still crawling towards you.
    As it gets closer, you catch a glimpse of its open plastic mouth. It’s teething.
    You have just enough time to try something else.
}

You don’t know what it will do if it reaches you, but you don’t want to find out. What can you use?

+ [Tennis ball/slingshot]
Shooting the baby with a tennis ball won't destroy it!
-> act3
+ [Valentine's gift]
The living baby doll is too young to have a secret admirer!
-> act3
+ [Can of marbles]
-You shake the can of marbles, and the baby stops moving. It eyes the can, then reaches out one hand with an insistent “BAH.” 

You toss the can at the baby. It catches it in one plastic hand and giggles. Its attention has moved from you to its new rattle. Crisis averted.

With the baby doll placated, you try to make a break for the door. It’s locked. A small clock above the door is counting down to the end of your shift. 

Does this place lock you in until your shift is over? That’s got to be a violation of… something. 

Behind you, the thumping comes from the chute again. This time, it’s faster. More animalistic.

- (challenge2) {The fuzzy head of a stuffed dog emerges from the chute. When it sees you, it|The evil stuffed dog} bares its teeth in a snarl. It bunches up to lunge for you, and you quickly grab the...

+ Tennis ball/slingshot.
You wave the tennis ball in front of the dog’s face. It barks happily, its tail wagging. 

You aim the slingshot away from you and launch the tennis ball across the room. The dog chases after it, all aggression towards you forgotten.

+ Valentine's gift.
You hold the plastic flowers out to the dog, but it just growls. It slinks towards you, agitated by the sparkles on the engagement ring. 
-> challenge2

- (challenge3)

The coast clear once again, you look at the countdown above the locked door. There’s only five minutes left until your legally sanctioned break. 

You can hang out in here with a living baby doll and stuffed dog, right? 

….Right? 

From behind you, you hear the loudest thump yet. It sounds like a grown adult is climbing up the metal chute towards you.

A head never emerges. Just a neck. Then a torso. It’s the mannequin from before. 

It topples out of the mouth of the chute like that girl that comes out of the TV in that movie. You know the one. 

The mannequin inches towards you, slithering across the floor like an especially curvaceous snake.

* [Give it the Valentine's gift!]

With nothing else to do, you hold the bouquet of plastic roses out to the mannequin. It pauses in its inching. 

After a moment, it turns slightly towards your face, as if making eye contact, then looks back at the flowers. 

“These are for you.”

The mannequin sits up, and you deposit the flowers in front of it. It seems happy. 

There’s a click, and the countdown above the door hits zero. The door unlatches and swings open. You’re free. 

You hurry out the door and slam it behind you before the homunculi can follow you. You rip your nametag off and dump it in the trash. It might be time to resign.

THE END

->END