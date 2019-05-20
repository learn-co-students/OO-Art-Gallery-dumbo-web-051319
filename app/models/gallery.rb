class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    return @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end
  def artists
    paintings.map {|painting| painting.artist}
  end
  def artist_names
    artists.map {|artist| artist.name}
  end
  def most_expensive_painting
    price_hsh = {}
    paintings.each do |painting|
      price_hsh[painting.title] = painting.price
    end
    most_exp = price_hsh.select {|work, reward| reward == price_hsh.values.max}
    # binding.pry
    return paintings.find do |painting|
      # binding.pry
      painting.title == most_exp.keys[0]
    end
  end

end
