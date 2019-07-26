class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    painting_arr = []
    Painting.all.each do |painting|
      if painting.gallery == self
        painting_arr << painting
      end
    end
    return painting_arr
  end

  def artist
    artist_arr = []
    Painting.all.each do |painting|
      if painting.gallery == self
        artist_arr << painting.artist
      end
    end
    return artist_arr
  end

  def artist_names
    name_arr = []
    Painting.all.each do |painting|
      if painting.gallery == self
        name_arr << painting.artist.name
      end
    end
    return name_arr
  end

  def most_expensive_painting
    list_paintings = self.paintings
    list_paintings.max {|x, y| x.price <=> y.price}
  end



  end
