##
#  A class to represent a room (location) in our adventure game
#

class Room
  def initialize(name, description)
    @name = name
    @description = description
  end
  
  def show
    show_string = @description
    if (@item)
      show_string += "\nYou can see:\n"
      show_string += "  #{@item.show}\n"
    end
    show_string
  end
  
  def add_item(item)
    @item = item
  end
end