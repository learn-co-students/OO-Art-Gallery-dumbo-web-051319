class Painting
  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    prices = self.all.map {|x| x.price}
    total = prices.inject {|sum, x| sum + x}
  end

end
