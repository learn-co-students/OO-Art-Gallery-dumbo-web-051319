require_relative '../config/environment.rb'

#   DOMAIN MODEL
#    ______________                 _______________ 
#   |              |               |               |
#   |  ARTIST      |               |   GALLERY     |
#   |______________|               |_______________| 
#       |                               |
#       |                               |   
#       |__________         ____________|
#                  |       |   
#                  ^       ^
#               ________________
#              |                |
#              |    PAINTINGS   |
#              |________________|   

# ARTIST has many GALLERIES through PAINTINGS
# GALLERY has many ARTISTS through PAINTINGS
# PAINTINGS belongs to ARTIST and GALLERIES


#   ARTIST CLASS (name, years of experience)
artist1 = Artist.new("Bosch", 25)
artist2 = Artist.new("Monet", 20)
artist3 = Artist.new("Durer", 15)
artist4 = Artist.new("Bansksy", 5)
artist5 = Artist.new("Crespo", 2)

#   GALLERY CLASS (name, city)
gallery1 = Gallery.new("Chelsea Gallery", "New York")
gallery2 = Gallery.new("LACMA", "Los Angles")
gallery3 = Gallery.new("M+", "Shenghai")
gallery4 = Gallery.new("Beegen", "Amsterdam")

#   PAINTING CLASS (title, price)
painting1 = Painting.new("Garden of Earthly Delights", 1500)
painting2 = Painting.new("The Haywain Triptych", 1000)
painting3 = Painting.new("Liles 1", 2500)
painting4 = Painting.new("Lilies 2", 1750)
painting5 = Painting.new("Hippy Jesus", 1250)
painting6 = Painting.new("Peace", 1500)
painting7 = Painting.new("Red Balloon", 5500)
painting8 = Painting.new("Shredded Balloon", 4500)
painting9 = Painting.new("Instagram", 500)
painting10 = Painting.new("Polaroid", 750)


binding.pry

puts "Bob Ross rules."
