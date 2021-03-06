Adventure Game in Ruby
======================
Started as an exercise for learning Ruby during the Nishiwaki.rb/Higashi-Nada.rb first meeting.


Features (For Cucumber)
-----------------------
* Player starts game
* Game loads game data(?)
* Player enters movement command
* Player enters get/drop command
* Player enters custom command
* Player wins game
* Player loses game
* Player exits game
* Player saves game


To Do
-----
* Load game data from a file
* Save current game state to a file
* Implement custom actions
* Japanese game data (and any modifications needed to make it run)

Game Data Loading
-----------------
This is referring to loading the game itself into the engine rather than loading saved gaming sessions.
Load Items, Rooms, Custom actions, Keywords into hashes or arrays
Loop through items with starting locations set and associate them with those locations
Loop through the rooms and ???
Loop through custom actions and associate them with the relevant command objects (how to deal with custom action priority, i.e. which action to execute first?)

Custom Actions
--------------
Attach to specific commands. Could have a pre- and post- custom action to be called before or after the command is executed.
Or could make custom actions a wrapper around a command which chooses when to call the main command (and therefore easily prevent a command from executing)
Need to allow filtering so that the custom action is only applied for the correct location and command arguments. (e.g. a custom action for opening a door shouldn't affect openning a chest)

Example use cases:
Closed door to the north
* Wrap around the north command
* Check door state
* If closed, print a message about the door being closed and finish
* Else call the north command normally

Booby Trapped chest:
* Wrap around open command
* If chest closed and trap has not already been triggered
* Display message about trap being triggered and decrease players health
