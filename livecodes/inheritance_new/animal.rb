class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.cats
    %w[lion cougar tiger leopard lynx jaguar]
  end

  def eat(food)
    "#{@name} eats #{food}"
  end
end
