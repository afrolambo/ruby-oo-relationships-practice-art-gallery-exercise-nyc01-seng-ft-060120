# Paintings can only be in one gallery at a time, and only have one artist. 
    #Paintings BELONG TO ONE Gallery THROUGH one Artist
class Painting 

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []
  @@total_price = []

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
    sum = 0
    @@all.each do |painting| 
      sum += painting.price 
    end 
    return sum 
  end 
end







# Painting.all
  # Returns an array of all the paintings
# Painting.total_price
  # Returns an integer that is the total price of all paintings

