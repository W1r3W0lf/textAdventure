
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

All of the fields that are modifyied by the user will be noted to be saved.
Only the user modifyed data will be saved in the save file to save on space.

While loading a save the inital game state will be loaded into the global array, then the save game will load in all of the changes to the original game.

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


How to store state between game sessions.
I would like to avoid storing every item and variable in one big file.
It would be nice to save the changes from the default environment.

I could make each item in a game have a unique number.
If that was the case the game could save only the new location of those items.
When the game checks to see if any item is in the save data, if it is then don't load it in it's default location.

That makes sense, but it seems like it would be quite slow.

If I could update the attributes of items from save data instead that would be better.


Items should be stored in sets.
Each room should have an item set so the interpreter can know what items should be loaded in.
In addition storage objects should store items in sets. Once you open a chest you can pull items out of it's item set.

There should also be a map of every item in the game. This map will be used when loading and saving the game.
Each item will be given a unique identifier to locate them in the map.
When loading a game the default environment is loaded from the game. Then on top of it the save data is loaded.
This means that if an item is moved of changed the universal map will reflect this.
When saving the game the program will save all of the entries in the global object map that are also in the modified items list.

Whenever an item is modified the name of the item will be saved in a list of modified items. Anything not in this list will have it's default state.


By using a map and noting witch items have been changed should be much faster then the sequential check alternative.


Item sets should be generated at the start of the game by going though every item in the global object map and adding them to the sets that they are a part of.
These sets should reference the original object witch is stored in the global object map.


Maybe it should be a global list instead of a global map.
I was thinking of mapping items to there names. But that would prevent having more than one item with a given name.
By having a list you could record indexes in the modifeyd object list instead.
You could also address any object in the game by it's object number.

Rooms are also objects. They have a description and a set that refiers to other objects.




Every Item, NPC, and Room will be represented as an Object in the Global 


