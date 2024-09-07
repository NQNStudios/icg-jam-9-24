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

== inventory

{egg_shells:
    \- Egg Shells
}
{band_aid:
    \- Dirty Band-Aid
}
{hair:
    \- Clump of Hair
}
{stuffed_dog:
    \- Stuffed Dog
}
{baby_doll:
    \- Baby Doll
}
{mannequin_torso:
    \- Mannequin torso
}
