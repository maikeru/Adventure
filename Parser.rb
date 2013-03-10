class Parser
  @@keywords = {
    "north" => :north,
    "n" => :north,
    "south" => :south,
    "s" => :south,
    "east" => :east,
    "e" => :east,
    "west" => :west,
    "w" => :west,
    "up" => :up,
    "u" => :up,
    "down" => :down,
    "d" => :down,
    "inventory" => :inventory,
    "i" => :inventory,
    "get" => :get,
    "drop" => :drop,
    "open" => :open,
    "close" => :close,
    "exit" => :exit
  }

  def self.command_string_to_symbol(string)
    @@keywords[string]
  end
  
  def self.get_command(input)
    tokens = input.split
    command = tokens[0]
    argument = tokens[1]
    return command_string_to_symbol(command), argument
  end

end