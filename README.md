This project is intended to try out more ridged structure around a project.

# I would suggest ignoring this project for now.

# What I want this to be

I want to create the ultimate text adventure engine.
Most text adventure engines/games I saw when looking around on github where very simple and didn't leverage the advantages that the format allows.
I hope to build a base that is easy to write games in, is expandable enough to build in your own features, and comes with a nice user interface out of the box.

A nice modern feature of a text adventure engine would be auto completion for commands. We have tab completion in the terminal, why not in a game?
An optional feature would be to allow for a list of the items in the room and in the players bag on screen to see what they are working with at a glance.
Another optional feature could be an ASCII world map in the upper left corner of the screen.

These are things that will not be in this engine's first usable release. I want to first build a base that allows for these types of additions to be made.

The base I am planning on making will take care of parsing text commands, storing state, and loading in scenes from the game's script.
I would also like to provide interfaces so that add-ons can have access to a players inventory, score, or whatever. This would make it so a game programmer can have most of the freedom as a from scratch engine, while not having to worry about the details.

An out there idea would be automated replies.
By using [GPT-neo](https://github.com/EleutherAI/gpt-neo) as a base you could create NPCs that don't have fixed speech but react to what the player says.

Many people think that text adventures are dead. But I think that they could have there own sub-category like visual novels.
The power of the text adventure is all you need is a world and someone to write it. If you want visuals check out [renpy](https://www.renpy.org/)

Feel free to take any of the ideas I express above and spin them into your own text adventure games/engines.

I am currently working on planning this project out so it won't die in the middle of development.

(Plan)[doc/plan.md]

I wanna draw out the planning phase for a long time. Think of an idea, then munch and crunch on it for a while and think of it's effects on everything else.
I would love to get the design as right as I can on the first try. It won't be perfect and I will 100% want to fix some problems it has. But I don't wanna have to have a third master plan design.

So I'm taking my time on the first one getting all of the clear ideas built up. After I build the first design I'll play with it and see it's pain points and fix them.
But after that I wanna move my focus from the engine to games on the engine. I love writing strange stories that don't follow much structure. I think the draw of them is to see what happens next.
With that I have wanted to make a text adventure that does the same thing. Your plopped in the middle of a strange world with loveable people and you get to learn more about this world in my head.
Not all of that will trainslate into a text adventure nicely. So I want to break out of the classic text adventure controls and have dialogue trees and stat checks.

In order to make those types of creative flexable stories that can move from a dating sim to exploration in the same beat I need something diffrent.
This is why I made this.
I love these strange ideas so much, and hope others will too.
