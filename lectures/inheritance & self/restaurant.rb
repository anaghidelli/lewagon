class Restaurant
  attr_reader :name, :city, :clients
  def initialize(name, city, category)
    @name = name
    @city = city
    @category = category
    @clients = []
  end

  def book(clients_name)
    @clients << clients_name
  end

  def open?
    Time.now.hour >= 18 && Time.now.hour <= 22
  end

end
