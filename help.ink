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

First day at a new job!

* Clock in [] You enter the building and clock in.
- You find a note that says:

"Welcome to the Three R's Recyling Facility, Logan Square branch!
You are the first volunteer at our newest location.
Please read all instructions twice carefully before carrying out your assigned responsibilities."

Volunteer? You thought you were getting paid for this!

->act1

== act1

Before you can make a complaint or stomp off, six objects tumble out of a wide metal chute.

<-inventory

Another note says:

"If something is useless, reduce it using this shrink ray!
If something is useful, put it in the chute marked 'Reuse', and it will be redistributed!
If something can be combined with something else, recycle them together!"

<-actions

== inventory

{egg_shells:
    \- Egg Shells

    RRR_Eggshell.png
}
{band_aid:
    \- Dirty Band-Aid

    RRR_Bandaid.png
}
{hair:
    \- Clump of Hair

    RRR_Hair.png
}
{stuffed_dog:
    \- Stuffed Dog

    RRR_Dog.png
}
{baby_doll:
    \- Baby Doll

    RRR_Baby.png
}
{mannequin_torso:
    \- Mannequin torso

    RRR_Mannequin.png
}

== actions

* Reduce -> reduce
* Reuse -> reuse
* Recycle -> recycle

== reduce
-> DONE

== reuse
-> DONE

== recycle
-> DONE