class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # find the gallery within the painting instances
    Painting.all.select {|paint| paint.gallery == self}
  end

  def artists
    # get the artist Paintings that match the gallery
    # then go into those paintings instances and retrieve me those artist names
    new_array = self.paintings
    new_array.map {|paint| paint.artist}
  end

  def artist_names
    list_artists = self.artists
    mine = list_artists.map {|person| person.name}
    mine.uniq
  end

  def most_expensive_painting
    # first get the paintings for the gallery
    # then find the "max" of that painting array and go into its price
    list_paintings = self.paintings
    list_paintings.max {|x, y| x.price <=> y.price}
  end

end
