require 'spec_helper'

describe "Room" do
  
  let(:room) { Room.new(:bedroom, "You are in a victorian bedroom. It has a four-poster bed in it.") }
    
  describe "#show" do
    it "describes the room" do
      room.show.should eql("You are in a victorian bedroom. It has a four-poster bed in it.")
    end

    context "when there are items in the room" do
      before(:each) do
        item = Item.new(:book, name: "a book", description: "a leather-bound book with mysterious writing on the cover")
        room.add_item(item)
      end
      it "displays 'You can see:'" do
        room.show.should include("You can see:")
      end
      
      it "lists the items" do
        room.show.should include("  a book")
      end
    end
  end

  describe "item related" do
    describe "#add_item and #remove item" do
      item = Item.new(:book, name: "a book", description: "a leather-bound book with mysterious writing on the cover")
      it "adds an item to the room" do
        room.add_item(item)
        room.inventory.should include(item)
      end
      it "removes an item from the room" do
        room.remove_item(item)
        room.inventory.should_not include(item)
      end
    end
  end
end
