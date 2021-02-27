class Photographer

   attr_accessor :name, :image, :title, :bio
   
   #link_to_buy, :authors_website

    @@all = []

    def initialize
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.list_photographers
        @@all.each.with_index(1) {|obj, idx| puts "#{idx}. #{obj.name}"}
    end

    def self.find_book_title(chosen_title)
        self.all.find {|obj| obj.title == chosen_title}
    end

    

end  
