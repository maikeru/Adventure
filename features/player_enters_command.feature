Feature: Player enters command
  In order to play the game
  As a player
  I want the game to respond to commands

Scenario: enter look command
  Given I am in the "bedroom"
  When I enter "look"
  Then I should see "You are in your bedroom. There is a door to the north"
  And I should see "> "

Scenario: enter look command when there is an item in the room
  Given I am in the "bedroom"
  And there is a "book" in the room
  When I enter "look"
  Then I should see "You are in your bedroom. There is a door to the north"
  And I should see "You can see:"
  And I should see "  a book"
  And I should see "> "

Scenario: pick up an item
  Given there is a "book" in the room
  When I enter "get book"
  Then I should see "You pick up the book"
  And the "book" should be in my inventory
  And the "book" should not be in the room