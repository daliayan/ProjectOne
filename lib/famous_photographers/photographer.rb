class Photographer

   attr_accessor :name, :image, :title, :bio, :link_to_buy, :authors_website

    @@all = []

    def initialize
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.list_photographers
        @@all.each_with_index(1) {|obj, index| puts "#{index}. #{obj.name}"}
    end

end  