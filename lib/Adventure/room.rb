require 'pp'

class Room
  attr_accessor :name, :description, :inventory, :exits, :actions
  
  @@valid_directions = [:north, :south, :east, :west, :up, :down]
  
  def initialize(name, description, inventory=[], exits={}, actions={} )
    self.name = name
    self.description = description
    self.inventory = inventory
    self.exits = exits
    self.actions = actions
  end
  
  def show()
    puts name
    name.length.times do |index|
      print "-"
    end
    puts
    puts self.description
    puts
    show_inventory
    puts
    show_exits
  end
  
  def show_inventory
    puts "You can see the following items:"
    if (self.inventory.length == 0)
      puts "  nothing"
    else
      self.inventory.each do |item| 
        if item != nil
          puts "  " + item.name
        end
      end
    end    
  end

  def self.valid_direction_strings
    @@valid_directions.map { |direction| direction.to_s }
  end
  
  def show_exits
    if (self.exits.length == 0)
      puts "There are no exits!"
    else
      puts "There are the following exits :"
      self.exits.each_key { |exit| puts "  #{exit}" }
    end
  end
  
  def get_exit_for(direction)
    self.exits[direction]
  end
  
  def has_item?(item)
    self.inventory.include?(item)
  end
  
  def add_item(item)
    self.inventory.push(item)
  end
  
  def remove_item(item)
    self.inventory.delete(item) if self.inventory.include?(item)
  end
  
  def can_move_to?(direction)
    if (direction.class == Symbol)
      self.exits.include?(direction)
    else
      Room.valid_direction_strings.include?(direction)
    end
  end
  
  def self.is_valid_direction?(direction)
    if (direction.is_a?(Symbol))
      @@valid_directions.include?(direction)
    else
      valid_direction_strings.include?(direction)
    end
  end
  
end