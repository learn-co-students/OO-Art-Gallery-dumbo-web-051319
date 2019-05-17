require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


rachel = Artist.new("Rachel", 15)
jacob = Artist.new("Jacob", 12)
rush = Gallery.new("RUSH Arts", "Brooklyn")
lil_mama_butt = Painting.new("Lil Mama's Butt", 5000, rush, rachel)
