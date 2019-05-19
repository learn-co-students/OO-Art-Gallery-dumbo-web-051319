require_relative '../config/environment.rb'

tom_a = Artist.new("Tom",10)
tim_a = Artist.new("Tim",5)
alice_a = Artist.new("Alice",2)

nyc_art_g = Gallery.new("NYC Art Museum", "NYC")
dc_art_g = Gallery.new("DC Art Museum", "DC")

love_p = Painting.new("Love", 10000, tom_a, nyc_art_g)
kind_p = Painting.new("Kind", 20000, tom_a, dc_art_g)
happy_p = Painting.new("Happy", 30000, tom_a, dc_art_g)

fly_p = Painting.new("Fly", 500000, tim_a, nyc_art_g)

king_p = Painting.new("King", 15000, alice_a, dc_art_g)
wind_p = Painting.new("Wind", 20000, alice_a, dc_art_g)


binding.pry

puts "Bob Ross rules."
