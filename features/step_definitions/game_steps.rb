Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  game = Adventure::Game.new(output)
  game.start
end

Given(/^the game has started$/) do
  @game = Adventure::Game.new(output)
  @game.start
  output.clear  
end

Given(/^I am in the "(.*?)"$/) do |arg1|
  room = Room.new(:bedroom, "You are in your bedroom. There is a door to the north")
  @game ||= Adventure::Game.new(output)
  @game.current_location = room
end

Given(/^there is a "(.*?)" in the room$/) do |arg1|
  book = Item.new(:book, name: "a book", description: "a leather bound book with mysterious writing on the cover.")
  @game.current_location.add_item(book)
end

When(/^I enter "(.*?)"$/) do |input|
  @game.process_input(input)
end

Then(/^I should see "(.*?)"$/) do |message|
  output.messages.should include(message)
end

Then(/^the "(.*?)" should be in my inventory$/) do |item|
  @game.player_inventory.contains(item)
end

Then(/^the "(.*?)" should not be in the room$/) do |item|
  !@game.current_location.contains(item)
end



class Output
  def messages
    @messages ||= []
  end
  
  def puts(message)
    messages << message
  end
  
  def clear
    @messages = []
  end
end

def output
  @output ||= Output.new
end
