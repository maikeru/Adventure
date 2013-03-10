Feature: Player starts game
  In order to play the game
  As a player
  I want the game to start

Scenario: start game
  Given I am not yet playing
  When I start a new game
  Then I should see "Welcome to Adventure!"
  And I should see "You are in your bedroom. There is a door to the north"
  And I should see "> "



  
