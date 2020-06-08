# An artist can have many paintings. 
    # Artist HAS MANY Paintings
class Artist

  attr_reader :name, :years_experience, :doner

  @@all = []

  def initialize(name, years_experience, doner)
    @name = name
    @years_experience = years_experience
    @doner = doner
    @@all << self 
  end

  def self.all 
    @@all
  end 

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end 


  def galleries 
    paintings.map do |painting|
      painting.gallery 
    end.uniq 
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end.uniq
  end 

  def self.total_experience
    sum = 0
    @@all.each do |artist|
      sum += artist.years_experience
    end 
    return sum 
  end 

  def self.most_prolific
   self.all.max_by do |artist| 
    artist.paintings.length / artist.years_experience
   end 
  end 

  def create_painting(title, price, gallery)
   Painting.new(title, price, self, gallery)
  end 

end

# Artist#paintings
  # Returns an array all the paintings by an artist
# Artist#galleries
  # Returns an array of all the galleries that an artist has paintings in
# Artist#cities
  # Return an array of all cities that an artist has paintings in
# Artist.total_experience
  # Returns an integer that is the total years of experience of all artists
# Artist.most_prolific
  # Returns an instance of the artist with the highest amount of paintings per year of experience.
# Artist#create_painting
  # Given the arguments of title, price and gallery, creates a new painting belonging to that artist
# Artist now has a Donor
    # doner in argument  