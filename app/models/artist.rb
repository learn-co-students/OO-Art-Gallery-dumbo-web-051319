class Artist
  @@all = []

  attr_reader :name, :years_experience, :gallery

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
     Painting.new(title, price, gallery, self)
    # painting.artist = self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self }
  end

  def galleries
    Painting.all.map {|painting| painting.gallery }.uniq
  end

  def cities
    galleries.map {|gallery| gallery.city }.uniq
  end

  def self.total_experience
    self.all.reduce(0) {|sum, artist| sum + artist.years_experience}
  end

   def self.most_prolific
     self.all.max_by {|artist| artist.paintings.length / artist.years_experience}
   end

end
