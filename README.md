# Project-01

# Broderick Staggs

# bgstaggs

# List the things you added for points
I created a horror story/ game on ink.
When you start you will have a total of 10 choices and if you run out of choices you will result in dying. (restart)
On the start text it will result in the user selecting one of three choices these choices go into further detail but result in leading you to the same place in the end. (Hallway)
When you get to the hallway you will get another three choices to choose from which result in the user finding the correct way out but also the story behind the madness!
Overall I enjoyed this project quite a bit. Definitely the most fun I have had creatively while coding. Whether thats in html, python, and now ink.

Lets go through some specifics in what i added.
=== start ===
=== gown_pickup ===
=== bed ===
=== hallway ===
=== nurses ===
=== operating ===
=== reveal ===
=== patient ===
=== stay_with ===
=== run ===
=== exit_choice ===
=== ending_escape ===
=== ending_trapped ===
=== death ===
All of these knots have there specific text and options following the selection of the choices.

After the start the hallway is pretty much your main hub of what you result back to. Every other choice you should make once especially cause there is a "lives" system implemented. While, coding I didn't understand how to take away visited passages but the hallway being sort of the main area of the story/ game made sense to me while coding. Thats why I made the choices matter because iof you revisit you will fail and have to restart. Also the playuers "choices" acts as the players health statistic so I was pretty excited about figuring that out. I then added if you put on the gown it will grant you an extra life/ choice.


VAR has_gown = false
* [Put on the gown.] 
    ~ has_gown = true
    ~ choices += 1
    -> hallway

The health system is "Dont let the number of choices reach Zero : {choices}"
Each restart of the game the user will get 11 choices to get out and complete the story.
I messed with the number of choices quite a bit so that it wasnt too easy or too hard.
It is kind of the perfect medium to really understand the story and backstory.
To make the "lives" lose after each choice I used:
    ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
           " -> END"
    }
"-> END" is not for all of them but it is just and example but if I was earlier in the story some of the examples would be (-> hallway, ->patient, ->nurses)just to name a few. If you dive into the code you will see.

That is pretty much the most important parts other parts of the code are a lot of text and other knots.


