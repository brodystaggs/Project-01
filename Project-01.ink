/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

// Project 01: Scary Hospital Story

// Project 01: Scary Hospital Story

VAR choices = 11


-> start

=== start ===
You wake up naked, confused and groggy in a hospital bed. 
You are freezing and the lights are dem,  {not gown_pickup:but you see that there is a hospital gown on the floor and realize that it will keep you warmer.}
You listen to see if you can hear anything but the hall outside is silent. You hear static and faint echoes of giggles in the distance... 
Almost like a whisper calling your name.

Dont let the number of choices reach Zero : {choices}

* [Put on the gown.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> gown_pickup
    }
+ [Get up and investigate.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> hallway
    }
+ [Stay in bed.] -> bed
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> hallway
    }

=== gown_pickup ===
You are now up and have a hospital gown. It will now keep you warmer.

Dont let the number of choices reach Zero : {choices}

+ [Investigate.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> hallway
    }
-> hallway

=== bed ===
 You roll over and pull the tattered blanket tight and shut your eyes.
 "Is the whisper real?" 
 "Or is it just in my head... " 
 "I can’t take it anymore." 
 "I have to get out of here!" 
 
 Dont let the number of choices reach Zero : {choices}
 
 -> gown_pickup
//  * {gown_pickup} [Put on hospital gown.]     ~ lives -= 1
-> hallway

=== hallway ===
The hall is long and narrow, lined with doors that keep slamming shut. 
A broken wheelchair starts rolling closer to you slowly. 
You see three possible paths: 
Dont let the number of choices reach Zero : {choices}
+ [Enter the nurses' station.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> nurses
    }
+ [Head toward the operating room.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> operating
    }
+ [Check the patient room at the end of the hall.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> patient
    }



=== nurses ===
You push open the door to the nurses' station. 
The computers are on, glowing red but one has a message:
“Leave while you can or reap the discomforts of what will occur” 
I proceed to try and search the computer for information. 
"I found something." 
An article that reads: 
"During Fall of 1967, Bodie Grove Hospital started working on terminal patients. They started operating on patients who were near death and unconcious. Patients after operations started to levitate and speak in a language the workers had never heard. Sensing that these operations have gone too far Bodie Grove Hospital decided to cancel their experiments and shut down the Bodie Grove Hospital for good. The last patient they operated on was in patient room 113. Ever since the doors have been boarded up." 
I mutter to myself: 
"I have to get out of here right now, but there is still more that I have to figure out!" 


Dont let the number of choices reach Zero : {choices}

+ [Go back to the hallway.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> hallway
    }

=== operating ===
"What is going on?" 
I mutter to myself quietly As I look around the room I see an operating table. 
On the table is a human like figure under a blood-stained sheet.
"There is no way this is happening to me right now." 
Still there is no sign of anyone else in this abandoned like hospital.

Dont let the number of choices reach Zero : {choices}

+ [Lift the sheet.] -> 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> reveal
    }
+ [Back away quietly.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> hallway
    }

=== reveal ===
You slowly lift the sheet. 
Gasps 
It’s... me. Your own face, pale and lifeless. 
You stand still in shock. 
The lights flicker twice and they go out. 
They flicker back on, but you are not in the operating room anymore.
"I'm back in the hallway?"

Dont let the number of choices reach Zero : {choices}
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> hallway
    }
// -> hallway

=== patient ===
You approach the patient room 113. As you get closer to the door, it flys open. 
"I can't see anything, I have to go in and see if this is real or all in my head." 
As you walk further inside the room you notice a figure sitting in the corner. With a glow from the broken boarded up window coming from its left. 
It whispers: 
“You have two options: " 
"Stay here with me and live in Bodie Grove forever." 
Or 
"Choose to run away and see if you can escape forever discomfort!” 

Dont let the number of choices reach Zero : {choices}

+ [Stay with the figure.] ->
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> stay_with
    }
+ [Run away.] 
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> run
    }

=== stay_with ===
You sit down. 
The figure takes your hand. Your skin turns cold, and you realize, that you will never leave. 

Dont let the number of choices reach Zero : {choices}
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> ending_trapped
    }
// -> ending_trapped

=== run ===
You sprint out of Patient Room 113 and run down the hall. 
The exit sign glows red but as you get closer the red glow starts to fade.

Dont let the number of choices reach Zero : {choices}
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            ->exit_choice
    }
// -> exit_choice

=== exit_choice ===
At the exit door, you hear the language that the patients were speaking and the intesified slamming of hallway doors. 
Do you push through the exit or turn back?   


Dont let the number of choices reach Zero : {choices}

+ [Push through the exit.] -> ending_escape
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> ending_escape
    }
+ [Turn back.]
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> hallway
    }

=== ending_escape ===
You burst into the night. 
It is pouring rain and you can't make out whats in front of you except an old flickering light post. 
You run to the light post and look back at the hospital. 
The sight of an overgrown hospital with boarded up doors but you notice the patient staring back at you from the door you exited.
You suddenly hear the whispers again. 
"You escaped but now we can see whatever you do on the outside of Bodie Grove Hospital, we will always have a piece of you and you will always have a piece of us!"

**You sprint as far as you can from Bodie Grove Hospital and never look back!
You live to see another day!
Until next time

Dont let the number of choices reach Zero : {choices}
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> END
    }
-> END

=== ending_trapped ===
 Your heartbeat stops but you are still concious. 
 The hospital walls close in, the slamming doors stop.
 And you realize, that you are apart of the Bodie Grove Operations of 1967. Forever. 

*You are the figure, now you roam the halls of Bodie Grove Hospital, waiting for the next patient to arrive.
Dont let the number of choices reach Zero : {choices}


-> END

=== death ===
You collapse and have a heartattack.
Better luck escaping next time!
Lives left: {choices}



-> END

