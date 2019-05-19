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
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end
  def galleries
    self.paintings.map {|painting| painting.gallery}
  end
  def cities
    self.galleries.map {|gallery| gallery.city}.uniq
  end
  def self.total_experience
    @@all.map{ |artist| artist.years_experience}.sum
  end
  def self.most_prolific
    hash_temp = {}
    @@all.each {|artist| hash_temp[artist] = 0}
    hash_temp.each{|artist, paint_per_year| paint_per_year = artist.paintings.count/artist.years_experience}
    hash_temp.sort_by {|artist, paint_per_year| paint_per_year}[-1][0]
  end
  def create_painting (title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
