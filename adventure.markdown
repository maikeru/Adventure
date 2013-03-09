Adventure Game in Ruby
======================

To Do
-----
* Add movement between rooms
* Load game data from a file
* Save current game state to a file
* Implement conditions


Room
-----
Id
Description
Exits (direction -> room Id)
Items
State
Conditions

Item
----
Id
Name
Description
Aliases
Weight
State
Conditions

Inventory
---------
Items
Capacity

NPC
---
Id
Name
Description
Conditions


What kind of conditions could we have?
1. Switch type - Open/close door etc. State needs to be remembered
2. Movement - based on some condition (e.g. door is open) allow movement in a direction to specific room
3. One off event - On a specific action, move an item, display a description etc
