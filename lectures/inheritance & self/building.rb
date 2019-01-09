class Building
  attr_reader :name, :width, :length

  def initialize(name, width, length)
    @name = name
    @width, @length = width, length
  end

  def floor_area
    @width * @length
  end
end

class Castle < Building
  attr_accessor :butler

  def has_a_butler?
    @butler != nil
  end
end

class House < Building
end


some_castle = Castle.new('Chambord', 156, 117)
puts some_castle.has_a_butler?
some_castle.butler = "George"
puts some_castle.has_a_butler?
