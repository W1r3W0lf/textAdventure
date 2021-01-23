# Text Adventure Game Engine requirements

## Portability
The software should be able to run on any POSIX compatible system and compiled to run under a Windows system.

## Expand-ability
The software should have an easy to use way to modify and expand the game.
There should be a way for the user to be able to place a file/folder inside of a game's data that will modify how the game works.


## Licensing

In hopes to invite others to create games that they are able to sell under this engine the preference is to lean on more copy center licenses.
While copy left licenses like the GPL ensure that development stays in the open, the smaller game developers I hope to attract with this project might be scared off by some of the requirements of the GPL.

If the final design of this Engine has a clearer line between Engine code and Game code then I will consider switching to a more copy left license. But if Engine code and Game code are harder to separate then I will stick with a copy center license to motivate adoption.

## Appearance

The software should display text that the user will respond to. After the user responds to that text the given text and response should be moved above the new text and response prompt.
This should apply repeatedly and the user should be able to scroll up to see older responses.


## Input

The software should receive text input though a terminal and should echo what the user types back to them at the bottom of the terminal screen.

