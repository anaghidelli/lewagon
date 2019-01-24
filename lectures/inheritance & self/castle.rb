require_relative "building"
require_relative "butler"
class Castle < Building
  attr_accessor :butler
  attr_reader :butler
  attr_writer :butler
  attr_reader :city

  def initialize(name, length, width, num_towers, city, butlers_age)
    super(name, length, width)
    @num_towers = num_towers
    @butler = Butler.new(self, butlers_age)
    @city = city
  end

  def has_a_butler?
    if @butler == nil
      false
    else
      true
    end
  end

  # def has_a_butler?
  #   @butler != nil
  # end

  def butler_age
    @butler.age
  end

  def self.categories
    ["Medieval", "Fairytale", "Princess"]
  end

  def total_floor_area
    super + 300
  end

  def self.price_per_square_metre(city)
    case city
    when "Paris" then 300
    when "London" then 350
    when "New York" then 200
    else
      "no such city"
    end
  end

  def castle_details
    "#{@name} is ruled by #{self.ruler_name}"
  end

  def ruler_name
    "Sam the great"
  end

end
