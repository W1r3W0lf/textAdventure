
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

Rooms and chests.

Rooms and chests are conceptually very similar.
They both store things. In terms of how state is dealt with they refer to things.
The biggest difference between chests and rooms is that rooms have doors.
I am thinking of making doors an object that can move you from one place to another.

What if there is something that stops a player in a room?
If there is a lava stream that divides the room into two. Is that still one room? Or is it two rooms?

With the current idea for rooms anything in the room can be interacted with. If something needs to be outside of the grasp of the player there should be another object in the way.
If that's a door there should be a lock on that door. If it's a book on the top self that's the same as a lock, just they key is a latter.

Another feature that rooms will have that chests will most likely opt to omit are variable descriptions.
The idea is that the description of the room will change when things are added and removed from that room.

> You enter a dark dank room.
> You can't see anything in the pitch black darkness.

> Use Lamp

Using Lamp implies looking.

> You can see a rope on the floor, and a pit in the northern corner of the room.

> Take Rope

> You now have the Rope

> Look

> You can see a pit in the northern corner of the room.

I am unsure if how to deal with these descriptions.
The suffice level approach would be to break it into items, room features, and light level.

But I want to boil that down into the core elements that are required. From those parts I want to be able to construct the special cases.
What if I want to glasses that can see hidden doors? I would need to hack in another type of variable description.
Most of the default elements of a game will be made of several atomics.

The player's inventory will be made of a contain atomic. That will be the same atomic that chests and rooms are made out of.

If you want to make a portal gun, that will just be a portal atomic, the same as what doors and hatches use.

Items will have label atomics.

A detection between rooms and chests will be the enter able atomic.

But to be able to equip something there is no atomic to help with that.

In order to make something equip able you must have a contain object that has a filter on it.
That filter will only allow objects with either matching or non-matching labels to be placed in it.

So for armor you would make an armor container that will only allow items with an "armor" label on them.

I am creating a language with louse typing.
This falls into line with Guile Lisp the language I want the games to be written in.
In a Lisp lists don't have types, you can put anything you want into a list.
And rather than building different objects you can just make a map. If the map connects contain to a list of other maps then it has the contain atomic. If not then it doesn't.

It's kinda like duck typing. If it honks like a duck then you can use it to honk. And if that same duck spans over watter you can also walk over it like a bridge.

