class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
  end

  def self.all
    @all
  end

  def total_price
    self.all.price.reduce(:+)
  end

end
