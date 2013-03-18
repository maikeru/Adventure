require 'spec_helper'

describe "Room" do
  describe "#show" do
    it "describes the room" do
      room = Room.new(:bedroom, "You are in a victorian bedroom. It has a four-poster bed in it.")
      room.show.should eql("You are in a victorian bedroom. It has a four-poster bed in it.")
    end
  end
end
