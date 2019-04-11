require_relative "castle"
require_relative "house"
tower = Castle.new("The Tower of London", 32, 35, "Alexander the great", "George")
windsor = Castle.new("Windsor", 30, 34, "Queeny", "Alfred")
tower.butler.clean_castle
windsor.butler.clean_castle
alfred = tower.butler
p alfred.castle.floor_area
# p castle.has_a_butler?
# p Castle.categories
# p castle.castle_details
# castle.butler = "George"
# p castle.has_a_butler?

# house = House.new("White House", 50, 52)
# p house.name
# p house.floor_area
# p house.has_a_butler?
