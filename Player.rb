class Player
  attr_accessor :inventory, :location
  def initialize()
    @inventory = []
    @location = nil
  end
  
  def drop_item(item)
    if (inventory.include?(item))
      inventory.delete(item)
      location.add_item(item)
      puts "You dropped the #{item}"
    end
  end
  
  def get_item(item)
    if (location.has_item?(item))
      inventory.push(item)
      location.remove_item(item)
      puts "You picked up the #{item}"
    else
      puts "You can't pick that up!"
    end
  end
  
  def show_inventory()
    puts "You are carrying:"
    if (inventory.length == 0)
      puts "nothing"
    else
      inventory.each { |item| puts "  " + item  }
    end
    puts
  end
  
  def move_to(direction)
    if location.can_move_to?(direction)
      new_location = location.get_exit_for(direction)
      self.location = new_location
      puts "You go #{direction}."
    else
      puts "You can't go that way!"
    end
  end
  
end