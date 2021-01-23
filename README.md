This project is intended to try out more ridged structure around a project.

# I would suggest ignoring this project for now.

# What I want this to be

I want to create the ultimate text adventure engine.
Most text adventure engines/games I saw when looking around on github where very simple and didn't leverage the advantages that the format allows.
I hope to build a base that is easy to write games in, is expandable enough to build in your own features, and comes with a nice user interface out of the box.

A nice modern feature of a text adventure engine would be auto compleation for commands. We have tab compleation in the terminal, why not in a game?
An optinal feature would be to allow for a list of the items in the room and in the players bag on screen to see what they are working with at a glance.
Another optinal feature could be an ASCII world map in the upper left corner of the screen.

These are things that will not be in this engine's first usable release. I want to first build a base that allows for these types of additions to be made.

The base I am planning on making will take care of parsing text commands, storing state, and loading in scenes from the game's script.
I would also like to provide interfaces so that add-ons can have access to a players inventory, score, or whatever. This would make it so a game programmer can have most of the freedom as a from scratch engine, while not having to worry about the details.

An out there idea would be automated replies.
By using [GPT-neo](https://github.com/EleutherAI/gpt-neo) as a base you could create NPCs that don't have fixed speech but react to what the player says.

Many people think that text adventures are dead. But I think that they could have there own sub-catigory like visual novles.
The power of the text adventure is all you need is a world and someone to write it. If you want visuals check out [renpy](https://www.renpy.org/)

Feel free to take any of the ideas I express above and spin them into your own text adventure games/engines.


I have found as my projects grow in scale the method I use to develop them starts to crumble.
I am taking some classes on structuring software projects, so no time like the present to try them out.

I think that the best program that I have uploaded to my Github has been my C version of Stegpal.
The design for that project was lifted directly out of the original and I had grate fun writing it.
But with my larger projects I find that having to design them while writing them very hard to work on.

I have known for a while that writing code without a plan spells doom for the project. But in the heat of the moment I want to do something.
So for this project I am going to outline what the final software is going to do and how it is going to do it before even touching any program files.

To start out with the majority of this project will be taking place in doc/ and nothing will be in src/


I am going to be trying out the waterfall method for this project. Witch is roughly

1. [Outline what it will do](./doc/SRS.md)
2. [Design](./doc/SDD.md)
3. Evaluate
4. Re-Design
5. Write
6. Test
7. Deploy

I don't think that waterfall is the optimal method for every project. But I think it's a good fit for this one.


This is the largest scope project that I have started to undertake.
So I would estimate that it will take months to do.

I intend to use C and Guile. But we will see how it goes after the final design is drawn up.

