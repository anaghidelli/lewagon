require_relative "lion"
require_relative "meerkat"
require_relative "warthog"


lion = Lion.new("star")
meerkat = Meerkat.new("cherry")
warthog = Warthog.new("bacon")
animals_array = [lion, meerkat, warthog]

animals_array.each do |animal|
 puts animal.talk
end
