# Galleries can have many paintings.
    #Gallery HAS MANY Paintings THROUGH Artist
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

  def artists
    paintings.map.uniq { |painting| painting.artist}
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self}
  end

  def artist_names
    artists.map do |artist| 
      artist.name 
    end.uniq
  end 

  def most_expensive_painting
    paintings.max_by do |painting| 
      painting.price
    end 
  end 

end


# Gallery.all
  # Returns an array of all the galleries
# Gallery#paintings
  # Returns an array of all paintings in a gallery
# Gallery#artists
  # Returns an array of all artists that have a painting in a gallery
# Gallery#artist_names
  # Returns an array of the names of all artists that have a painting in a gallery
# Gallery#most_expensive_painting
  # Returns an instance of the most expensive painting in a gallery