require_relative 'player'
require_relative 'room'
require_relative 'parser'
require_relative 'item'

module Adventure
  class Game
    attr_accessor :current_location

    def initialize(output)
      @output = output
    end

    def start
      @output.puts 'Welcome to Adventure!'
      @current_location = Room.new(:bedroom, 'You are in your bedroom. There is a door to the north')
      multi_put @current_location.show
      #@output.puts @current_location.show.split("\n")
      prompt_user
    end
    
    def process_input(input)
      if (input == "look")
        multi_put @current_location.show
        prompt_user
      end
    end
    
    def prompt_user
      @output.puts '> '
    end
    
    def multi_put(text)
      text.split("\n").each do |line|
        @output.puts line
      end
    end
  end

end