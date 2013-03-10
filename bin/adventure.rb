#!/usr/bin/env ruby

require_relative 'Player'
require_relative 'Room'
require_relative 'Parser'
require_relative 'Item'

player = Player.new()
landing = Room.new("Landing", "You are on the landing, there is a bedroom to the south and stairs leading downwards.")
exits = { north: landing }
#room_items = [ 
book = Item.new("book", "an old book", true),
door = Item.new("door", "the door is closed", false)
#]
start_room = Room.new("Bedroom", "You are in your bedroom", [], exits)
landing.exits = { south: start_room }
#start_room.add_item(book)
#start_room.add_item(door)

player.location = start_room

def do_get(player, item)
  player.get_item(item)
end

def do_drop(player, item)
  player.drop_item(item)
end

def process_command(command, argument, player)
  case command
  when :exit
    return false
  when :get
    do_get(player, argument)
  when :drop
    do_drop(player, argument)
  when :inventory
    player.show_inventory
  else
    if ((argument == nil) && (Room.is_valid_direction?(command)))
      player.move_to(command)
    else
      puts "I don't know what you mean"
    end
  end
  true
end


running = true
while(running)
  player.location.show
  puts
  puts "What would you like to do?"
  print "> "
  input = gets

  command, argument = Parser.get_command(input)
  running = process_command(command, argument, player)
  puts
  puts "*****"
  puts
end