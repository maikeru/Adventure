Adventure Game in Ruby
======================
Started as an exercise for learning Ruby during the Nishiwaki.rb/Higashi-Nada.rb first meeting.

To Do
-----
* Load game data from a file
* Save current game state to a file
* Implement custom actions


Room
-----
Id
Description
Exits (direction -> room Id)
Items
State
Custom actions

Item
----
Id
Name
Description
Aliases
Weight
State
Custom actions

Inventory
---------
Items
Capacity

NPC
---
Id
Name
Description
Custom actions


What kind of custom actions could we have?
1. Switch type - Open/close door etc. State needs to be remembered
2. Movement - based on some condition (e.g. door is open) allow movement in a direction to specific room
3. One off event - On a specific action, move an item, display a description etc
