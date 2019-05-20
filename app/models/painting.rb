class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery
  @@all = []
  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    return @@all
  end
  def self.total_price
    prices = all.map {|painting| painting.price}
    return prices.inject {|s, n| s + n}
  end

end
