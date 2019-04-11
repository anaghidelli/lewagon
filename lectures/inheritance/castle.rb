require_relative "building"
require_relative "butler"
class Castle < Building
  attr_accessor :butler

  def initialize(name, width, length, ruler, butler_name)
    super(name, width, length)
    @butler = Butler.new(self, butler_name)
    @ruler = ruler
  end

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 300  # `super` calls `floor_area` of `Building`
  end

  def self.categories
    return ['Medieval', 'Norman', 'Ancient']
  end

  def castle_details
    "#{@name} is ruled by #{self.ruler_name}"
  end

  def ruler_name
    @ruler.capitalize
  end
end


















