class Artist
  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    #iterate through paintings to see if paintings.artist == the artist/self
      Painting.all.select {|paint| paint.artist == self}
  end

  def galleries
    #iterate through the paintings to see get the painting.galleries
    ours = self.paintings
    ours.map {|x| x.gallery}
  end

  def cities
    #look/iterate in the galleries instances to get back the cities the galleries are in
    our_places = self.galleries
    places = our_places.map {|y| y.city}
    places.uniq
  end

  def self.total_experience
    years = self.all.map {|person| person.years_experience}
    total_years = years.inject {|sum, x| sum + x}
  end

  def self.most_prolific
    self.all.max {|x, y| x.years_experience <=> y.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
