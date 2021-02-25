class Scraper

    # @@doc = class variable that stores my Nokogiri parsing gem
    

    def self.get_photographers
        @@doc = Nokogiri::HTML(open("https://phlearn.com/magazine/top-20-photography-books-of-all-time/"))
        
        @@doc.css("div.list-card").each do |card|
        photo_obj = Photographer.new                        #The creation of my object
        photo_obj.name = card.css("p").css("a").text            #Returns an instance of my Photographer
        img_link = card.css('img.lazy')[0]['data-lazy-src']
        photo_obj.book_title = card.css("h3").text
        photo_obj.authors_bio = card.css("p").css("p").text

        

        photo_obj.image = img_link


        binding.pry
        end
       
    
    end

    
end


#  img_link = 

# author_web_link = 
# link_to_buy = 

