require_relative '../config/environment.rb'

met = Gallery.new("Metropolitan Art Gallery", "New York")


arty = Artist.new("Arthur", 15)
sam = Artist.new("Sam", 25)

x = Painting.new("X", 200, arty, met)
y = Painting.new("Y", 35, arty, met)
w = Painting.new("W", 700, arty, met)

a = Painting.new("A", 310, sam, met)
b = Painting.new("B", 88, sam, met)



binding.pry

puts "Bob Ross rules."

# What are your models?
# Painting, Gallery, Artist

# What does your schema look like?

# What are the relationships between your models?
    # Gallery has many artists and many paintings through artists
    # Artists has many paintings, and has many galleries 
    # A Painting belongs to an Artist, and blongs to a gallery
