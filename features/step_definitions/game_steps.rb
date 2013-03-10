Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  Adventure::Game.new.start
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end