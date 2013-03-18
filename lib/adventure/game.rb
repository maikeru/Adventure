require_relative 'player'
require_relative 'room'
require_relative 'parser'
require_relative 'item'

module Adventure
  class Game
    def initialize(output)
      @output = output
    end

    def start
      @output.puts 'Welcome to Adventure!'
      room = Room.new(:bedroom, 'You are in your bedroom. There is a door to the north')
      @output.puts room.show
      @output.puts '> '
    end
    
    def process_input(input)
    end
  end

end