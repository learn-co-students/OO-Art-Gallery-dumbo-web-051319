class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery
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
    total = []
    self.all.each do |painting|
      total << painting.price
    end
    total.inject {|sum,x|sum+x}
  end



end
