require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


rachel = Artist.new("Rachel", 15)
jacob = Artist.new("Jacob", 12)
eddo = Artist.new("Edwin", 45)
rush = Gallery.new("RUSH Arts", "Brooklyn")
gagosian = Gallery.new("Gagosian", "Manhattan")
invisible_dog = Gallery.new("Invisible Dog Factory", "Brooklyn")
lil_mama_butt = Painting.new("Lil Mama's Butt", 5000, rush, rachel)
achilles_butt = Painting.new("Achilles's Butt", 3000, rush, jacob)
portrait_of_david = Painting.new("Portrait of David", 5000000, invisible_dog, eddo)
rachel.create_painting("Abstraction", 4000, gagosian)





binding.pry

puts 'hi'
