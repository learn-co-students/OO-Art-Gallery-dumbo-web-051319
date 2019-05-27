require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'



#DOMAIN MODEL
# ______________                 _______________ 
#|              |               |               |
#|  ARTIST      |               |   GALLERY     |
#|______________|               |_______________| 
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



