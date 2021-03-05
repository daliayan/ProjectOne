class Photographer

   attr_accessor :name, :image, :title, :summary, :author, :purchase
   

    @@all = []

    def initialize
        @@all << self
    end

    def self.find_titles_display_obj(integer)
        idx = integer - 1
        obj = @@all[idx]
        puts ''
        puts "\n Photographer name: #{obj.author}"
        puts ''
        puts "\n Book Title: #{obj.title}"
        puts ''
        puts "\n Summary: #{obj.summary}"
        puts ''
        puts "\n Click the link to purchase the book (or copy+paste into your web browser): #{obj.purchase}"
        puts ''
        puts "\n Click to view image (or copy+paste into your web browser): #{obj.image}"
        puts ''
    end
    
    def self.all
        @@all
    end

    def self.list_photographers
        @@all.each.with_index(1) {|obj, idx| puts "\n#{idx}. #{obj.name}"}
    end

    def self.find_book_title(chosen_title)
        self.all.find {|obj| obj.title == chosen_title}
    end



end  
