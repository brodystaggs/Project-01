# Project-01 Name
Bodie Grove Hospital
# Your Name
Broderick Staggs
# Your Github username
brodystaggs
# List the things you added for points

I made a way more in depth run down of my project but it did not save from my mac to my pc.
but
I will explain the story and pretty much what I added to make it work that way. (Hopefully this solves)

During my creative process on thinking what I wanted to make I was thinking of the horror genre. I have been in to horror games for a long time and I think they immerse you into the world more than a lot of other genres. So I took inspiration from outlast but not too much. The scene I tried to set in the hospital reminded me of the game and thats why I am mentioning it.
To start I made the user have a certain amount of lifes or in my story game its called choices. Just because it is a story and you pick different passages throughout.

The code I used:
VAR choices = 11

Dont let the number of choices reach Zero : {choices}

   ~ choices -= 1
    {choices <= 0:
            -> death
        - else:
            -> hallway
"->  hallway" varies between where you are in the story but the hallway is pretty much the man hub area for the game after the first few passage selections.

One of my favorite things I added was that if you pick up the hospital gown you will gain a life/choice. this allows the user to add to the "health statistic" while allowing the user to visualize the character. Also im pretty sure I made this a pickup.

The code I used:
VAR has_gown = false
~ has_gown = true
    ~ choices += 1
    -> hallway

I was stuck on this for half an hour but realized I had a "-" instead of a "+".

Going on to some basic knots I used. During my story I used a total of 14 knots to be able to bring my story to a close.
Some knots:
=== ending_trapped ===
=== death ===
=== stay_with ===
=== patient ===
=== reveal ===
Just to name a few

Pretty much the rest is simple ink code that allows the projection of text and passage selections.
I had a good time with this project both creatively and puttiong what I have learned to the test.








