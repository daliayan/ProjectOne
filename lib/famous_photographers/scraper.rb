class Scraper

    # @@doc = class variable that stores my Nokogiri parsing gem
    

    def self.get_photographers
        @@doc = Nokogiri::HTML(open("https://phlearn.com/magazine/top-20-photography-books-of-all-time/"))
        
        @@doc.css(".div.list-card").first
        #do |card|
        binding.pry
        select_photographer = Photographer.new
        end
    end

    # def self.choose_photographer

    # end
end

