require_relative "restaurant"
res = Restaurant.new("Dishoom", "London", 20, "Indian")
p res
p "#{res.name} is in #{res.city}"
p "It can host #{res.capacity} people"
p "construction happened"
res.capacity = 60
p "It can host #{res.capacity} people"
p "The restaurant is #{res.open? ? "open" : "closed" }"
p "Boris calls and makes reservation"
res.book("Boris")
p res
