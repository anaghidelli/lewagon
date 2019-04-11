require_relative "lion"
require_relative "meerkat"
require_relative "warthog"

lion = Lion.new("Simba")
meerkat = Meerkat.new("Timone")
warthog = Warthog.new("Pumba")

animals = [lion, meerkat, warthog]

animals.each do |animal|
  puts animal.talk
end
