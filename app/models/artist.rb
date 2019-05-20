class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    return @@all
  end
  def self.total_experience
    experience = all.map {|artist| artist.years_experience}
    return experience.inject {|sum, num| sum + num}
  end
  def self.most_prolific
    works_p_year_hsh = {}
    all.each do |artist|
      works_p_year_hsh[artist.name] = (artist.years_experience / artist.paintings.length)
      # binding.pry
    end
    most_prolific = works_p_year_hsh.max_by {|artist, proliferation| artist}[0]
    return all.find {|artist| artist.name == most_prolific}
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price)
    # binding.pry
    painting.gallery = gallery
    painting.artist = self
    return painting
  end

  def paintings
    return Painting.all.select {|painting| painting.artist == self}
  end
  def galleries
    return Gallery.all.select do |gallery|
      gallery.artists.include?(self)
    end
  end
  def cities
    galleries.map {|gallery| gallery.city}
  end

end
