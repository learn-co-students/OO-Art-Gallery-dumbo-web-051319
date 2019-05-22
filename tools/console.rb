require_relative '../config/environment.rb'


###### ARTIST ######
daniela = Artist.new("Daniela", 12)
mochi = Artist.new("Mochi", 10)
lychee = Artist.new("Lychee", 32)

###### GALLERY ######
met_gala = Gallery.new("The Met", "New York")
the_new = Gallery.new("The New Museum", "New York")
lourve = Gallery.new("The Lourve", "France")

###### PAINTING ######
painting1 = Painting.new("Need More Food", 300, lychee, lourve)
painting2 = Painting.new("Biscuits", 500, mochi, met_gala)
painting3 = Painting.new("My Cats", 1000, daniela, the_new)
painting4 = Painting.new("Royals", 1800, mochi, met_gala)
painting5 = Painting.new("Fish Pls", 400, lychee, the_new)
painting6 = Painting.new("Catnip is Good", 200, lychee, met_gala)


binding.pry

puts "Bob Ross rules."
