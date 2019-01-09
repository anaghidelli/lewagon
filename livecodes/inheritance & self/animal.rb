class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def self.phyla
    %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
  end

  def eat(food)
    puts food
    "#{@name} eats #{food}"
  end
end
