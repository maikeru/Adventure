Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  game = Adventure::Game.new(output)
  game.start
end

Given(/^the game has started$/) do
  game = Adventure::Game.new(output)
  game.start
end

Then(/^I should see "(.*?)"$/) do |message|
  output.messages.should include(message)
end

When(/^I enter the "(.*?)" command$/) do |command|
  input_handler.content.should include(command)
end

class Output
  def messages
    @messages ||= []
  end
  
  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

class InputHandler
  def content
    @content ||= []
  end
  
  def gets(content)
    content << content
  end
end

def input_handler 
  @input_handler ||= InputHandler.new
end