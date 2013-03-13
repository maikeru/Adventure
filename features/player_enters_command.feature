Feature: Player enters command
  In order to play the game
  As a player
  I want the game to respond to commands

Scenario: enter look command
  Given the game has started
  When I enter "look"
  Then I should see "You are in your bedroom. There is a door to the north"
  And I should see "> "