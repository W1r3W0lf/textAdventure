
# Text Adventure Game Engine Design


Life inside of this program

The user will enter text into there terminal.
This text will be taken by the front-end and passed along to the lexer.
The lexer will tokenise the users inputs into recognizable words.
These recognizable words will be passed onto the interpreter to see if they match any known commands.
If it is recognized as a valid command then the interpreter executes that command in the current environment.
The command will also give text to the front end to display to the user.

# Game State

The game will store it's game state in a global array.
Initial game data will be loaded into this array.
The user will modify this array in the game while interacting with the game world.

Objects in the game world will be able to freely refer to one another in this array.

All of the fields that are modified by the user will be noted to be saved.
Only the user modified data will be saved in the save file to save on space.

While loading a save the initial game state will be loaded into the global array, then the save game will load in all of the changes to the original game.

Every object in the game will have a unique index into this global array.
These numbers should be hidden from the end developer.

> This means that loading and saving can be easy.
> It also lays out the idea that all game state is treated the same at a base level.
> Rooms, NPCs, Items, and Chests are all stored in the same way.

> A way to save memory is to only load in items in the array that the user has access to.
> The player should be index 0. Then you would follow there location field to index N and load all of the items listed in there location.
> I might try and play around with this after I get the normal method working.

> It may seem dumb to try and save space and memory on games that are super light.
> But I just love making things light and fast.

# Thinking in text

These are thoughts that I am having about the design.
I'll work on these ideas until I put them into full ideas above this section.



