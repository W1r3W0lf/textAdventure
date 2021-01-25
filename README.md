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

I am currently working on planning this project out so it won't die in the middle of development.

(Plan)[doc/plan.md]

