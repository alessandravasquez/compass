require 'sinatra'

directions = ["north", "east", "south", "west"]

puts directions[3]

# *************************************************

compass = { n: "north", e: "east", s: "south", w: "west" }

puts compass[:n]

# *************************************************

class Direction

  def initialize(abbreviation, direction_name)
    @abbreviation = abbreviation
    @direction_name = direction_name
  end

  def direction_name
    @direction_name
  end
end

d = Direction.new("n", "North")
puts d.direction_name

# *************************************************


class Compass
  attr_reader :directions

  def initialize
	 directions = []
	 directions << Direction.new("n", "north")
	 directions << Direction.new("e", "east")
	 directions << Direction.new("s", "south")
	 directions << Direction.new("w", "west")
	end
end

my_compass = Compass.new
p my_compass

# *************************************************

get '/' do
  "test"
end

# *************************************************

get '/' do
  direction = params[:direction]
  if direction == "n"
      return "north"
  elsif direction == "e"
      return "east"
  elsif direction == "s"
      return "south"
  elsif direction == "w"
      return "west"
  else
      return "none"
    end
end
