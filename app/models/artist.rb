class Artist
  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery, self)
    painting = Painting.new(title, price)
    painting.artist = self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self }
  end

  def galleries
    # array of all galleries artist has painitn in
  end

  def cities
    # all cities artist has painintgs in
  end

  def total_experience
    self.all.years_experience.reduce(:+)
  end

   def most_prolific
     # most paintings made
   end

end
