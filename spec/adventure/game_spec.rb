require 'spec_helper'

module Adventure
  describe Game do
    describe "#start" do  
      let(:output) { double('output').as_null_object }
      let(:game)   { Game.new(output) }
      it "sends a welcome message" do
        output.should_receive(:puts).with("Welcome to Adventure!")
        game.start
      end
      it "describes your location" do
        output.should_receive(:puts).with("You are in your bedroom. There is a door to the north")
        game.start
      end
      it "prompts for a command" do
        output.should_receive(:puts).with("> ")
        game.start
      end
    end
    
    describe "handle input" do
      let(:output) { double('output').as_null_object }
      let(:game)   { Game.new(output) }
      it "accepts 'look' as input" do
        game.process_input("look")
      end
      it "describes your location" do
        output.should_receive(:puts).with("You are in your bedroom. There is a door to the north")
        game.start
      end
      it "prompts for a command" do
        output.should_receive(:puts).with("> ")
        game.start
      end
    end
  end
end
