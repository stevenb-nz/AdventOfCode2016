class AOC16

  def initialize
    @location = Point.new(0,0,'N')
  end

  def blocks(move_string)
    move_list = move_string.split(', ')
    move_list.each {|i| @location.move(i)}
    @location.blocks_away
  end

end

class Point
  attr_accessor :x,:y,:z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def move(i)
    pivot = i[0]
    distance = i[1..-1].to_i
    change_direction(pivot)
    case @z
    when 'N'
      @y += distance
    when 'E'
      @x += distance
    when 'S'
      @y -= distance
    when 'W'
      @x -= distance
    end
  end

  def blocks_away
    @x.abs + @y.abs
  end

  def change_direction(pivot)
    case @z
    when 'N'
      pivot == 'L' ? @z = 'W' : @z = 'E'
    when 'E'
      pivot == 'L' ? @z = 'N' : @z = 'S'
    when 'S'
      pivot == 'L' ? @z = 'E' : @z = 'W'
    when 'W'
      pivot == 'L' ? @z = 'S' : @z = 'N'
    end
  end

end

f = File.read("day01/input01a.txt")
puts AOC16.new.blocks(f)
