require 'spec_helper'

describe "Room" do
  describe "#show" do
    it "describes the room" do
      room = Room.new(:bedroom, "You are in a victorian bedroom. It has a four-poster bed in it.")
      room.show.should eql("You are in a victorian bedroom. It has a four-poster bed in it.")
    end
    
    it "lists items in the room" do
      room = Room.new(:bedroom, "You are in a victorian bedroom. It has a four-poster bed in it.")
      item = Item.new(:book, name: "a book", description: "a leather-bound book with mysterious writing on the cover")
      room.add_item(item)
      room.show.should include("You can see:")
      room.show.should include("  a book")
    end
  end
end
