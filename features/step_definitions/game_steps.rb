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

Then(/^I should see "(.*?)"$/) do |message|
  output.messages.should include(message)
end

When(/^I enter "(.*?)"$/) do |input|
  @game.process_input(input)
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