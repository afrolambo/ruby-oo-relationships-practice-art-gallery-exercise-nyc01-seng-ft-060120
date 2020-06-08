class Doner
    attr_accessor :name, :amount 

    @@all = []
    
    def initialize(name, amount)
        @name = name
        @amount = amount
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def artists 
        Artist.all.select.uniq {|artist| artist.doner == self}
    end 
end 


# Donor has a name and an amount
    # returns doner name and donation amount
# Artist should know their Donor's name and amount 
  
# Donor should know all their Artists' 
#   names (the list should not have a duplicate name 
#   if they've donated to the same artist twice)