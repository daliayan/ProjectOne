class Scraper

    # @@doc = class variable that stores my Nokogiri parsing gem
    

    def self.get_photographers
        @@doc = Nokogiri::HTML(open("https://phlearn.com/magazine/top-20-photography-books-of-all-time/"))
        
        @@doc.css(".div.list-card").first
        #each do |card|
        binding.pry
        #end

    
    end

    
end
# photographer = @@doc.css(".list-card").first.css("p").css("a").text
#  book_title = @@doc.css(".list-card").first.css("h3").text - eventually card.css(".list-card")[0].css("h3").text
#  img_link = 
# authors_info = @@doc.css(".list-card").first.css("p").css("p").text
# author_web_link = 
# link_to_buy = 

