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
    if (@inventory)
      show_string += "\nYou can see:\n"
      @inventory.each { |item| show_string += "  #{item.show}\n" }
    end
    show_string
  end
  
  def inventory
    @inventory ||= []
  end
  
  def add_item(item)
    self.inventory.push item
  end
  
  def remove_item(item)
    self.inventory.delete item
  end
end