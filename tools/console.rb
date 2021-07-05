require_relative '../config/environment.rb'

birk_birk = Artist.new("Andrew Birk", 9)
myles = Artist.new("Myles Starr", 5)
no_space = Gallery.new("No Space", "We aren't anywhere anymore, and we weren't anwhere when we were")
sort = Gallery.new("SORT", "Vienna")
anonymous = Gallery.new("Anonymous", "Mexico City")
# origin = Painting.new("Origin", 1000000000)
# value = Painting.new("Where Value Lies", 10000000000)

birk_birk.create_painting("Origin", 1000000, sort)
birk_birk.create_painting("Calzada de Tlalpan", 1000000, anonymous)
myles.create_painting("Where Value Lies", 10000000, no_space)
myles.create_painting("totally", 1000000, no_space)

binding.pry
puts "Bob Ross ran this program."
