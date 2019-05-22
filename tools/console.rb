require_relative '../config/environment.rb'

artist1 = Artist.new("bob",3)
artist2 = Artist.new("john",13)
artist3 = Artist.new("kev",3)

painting1= Painting.new("Hey",38)
painting2= Painting.new("Starry Night",3006)
painting3= Painting.new("Mona Lisa",12000)

gallery1=Gallery.new("MoMA","NYC")
gallery2=Gallery.new("Barcelona Museum","Barcelona")





binding.pry

puts "Bob Ross rules."
