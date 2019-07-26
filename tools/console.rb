require_relative '../config/environment.rb'
artist1 = Artist.new('Leo', 10)
artist2 = Artist.new('Dave' ,15)

gallery1 = Gallery.new('The Cube','NY')
gallery2 = Gallery.new('The Square','Boston')


painting1 = Painting.new('The Momi',50, artist1, gallery1)
painting2 = Painting.new('The Lychee',40, artist2, gallery1)
painting3 = Painting.new('The Popi',60, artist1, gallery2)
painting4 = Painting.new('The Mochi',59, artist2, gallery2)

binding.pry

puts "Bob Ross rules."
