require "pry"
class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def painting
    painting_arr = []
    Painting.all.each do |paint|
      if self == paint.artist
        painting_arr << paint
      end
    end
    return painting_arr
  end

  def gallery
    gallery_arr = []
    Painting.all.each do |paint|
      if self == paint.artist
        gallery_arr << paint.gallery
      end
    end
    return gallery_arr
  end

  def cities
    city_arr = []
    Painting.all.each do |paint|
      if self == paint.artist
        city_arr << paint.gallery.city
      end
    end
    return city_arr
  end

  def self.total_experience
    artist_arr = []
    Artist.all.each do |artist|
      artist_arr << artist.years_experience
    end
    artist_arr.inject {|sum,x| sum+x}
  end

  def self.most_prolific
    self.all.max {|x, y| x.years_experience <=> y.years_experience}
  end
   # go to all the artist, get the artist with the highest total painting/year
  end

  def create_painting(title,price,gallery)
    new_artist = Painting.new(title,price,self, gallery)
  end
end
