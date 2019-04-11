class Restaurant

  attr_reader :name, :city
  attr_accessor :capacity #encapsulation
  def initialize(name, city, capacity, food_type)
    @name = name
    @city = city
    @capacity = capacity
    @food_type = food_type
    @clients = []
  end

  # all restaurants are only open between 6pm and 10pm
  def open?
    Time.now.hour >= 18 && Time.now.hour <= 22
  end

  def book(client_name)
    @clients << client_name
  end

  # def name
  #   return @name
  # end

  # def city
  #   return @city
  # end
end
