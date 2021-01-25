
# Text Adventure Game Engine Design


Life inside of this program

The user will enter text into there terminal.
This text will be taken by the front-end and passed along to the lexer.
The lexer will tokenise the users inputs into recognizable words.
These recognizable words will be passed onto the interpreter to see if they match any known commands.
If it is recognized as a valid command then the interpreter executes that command in the current environment.
The command will also give text to the front end to display to the user.


# Unknowns

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


