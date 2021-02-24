class Photographer

   attr_accessor :photographer, :image, :book_title, :authors_bio, :link_to_buy, :authors_website

    @@all = []

    def initialize
        @@all << self
    end
    
    def self.all
        @@all
    end

end  