class Photographer

   attr_accessor :image, :title, :authors_page, :link_to_buy, :recommended_for 

    @@all = []

    def initialize
        @@all << self
    end
    
    def self.all
        @@all
    end

end  