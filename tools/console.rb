require_relative '../config/environment.rb'

artist1 = Artist.new("Carla", 30)
artist2 = Artist.new("Adam", 27)
artist3 = Artist.new("Tom", 18)
artist4 = Artist.new("Bob", 20)
artist5 = Artist.new("Johanne", 42)
artist6 = Artist.new("Kate", 29)



gallery1 = Gallery.new("Fancy Gallery", "New York")
gallery2 = Gallery.new("Shee Shee Gallery", "Chicago")

painting1 = Painting.new("Crying in the Rain", 4500, artist1, gallery1)

painting2 = artist1.create_painting("the Crying Man", 4500, gallery1)
painting3 = artist2.create_painting("the Crying Woman", 7000, gallery2)
painting4 = artist3.create_painting("Song Bird", 6500, gallery1)
painting5 = artist4.create_painting("the Dead Woman", 4300, gallery1)
painting2 = artist5.create_painting("the Crying", 4500, gallery1)
painting3 = artist6.create_painting("the Woman", 4000, gallery2)
painting4 = artist6.create_painting("Song Fight", 5500, gallery1)
painting5 = artist6.create_painting("the Dead", 4300, gallery1)
painting2 = artist1.create_painting("theMan", 4500, gallery1)
painting3 = artist1.create_painting("the sky", 4000, gallery2)
painting4 = artist2.create_painting("Bird", 5500, gallery1)
painting5 = artist2.create_painting("the creep", 4300, gallery1)

binding.pry

puts "Bob Ross rules."
