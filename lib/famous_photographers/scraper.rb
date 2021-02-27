class Scraper

    # @@doc = class variable that stores my Nokogiri parsing gem
    

    def self.get_photographers
        @@doc = Nokogiri::HTML(open("https://phlearn.com/magazine/top-20-photography-books-of-all-time/"))
        
        @@doc.css("div.list-card").each do |card|
            photo_obj = Photographer.new                        #The creation of my object
            photo_name = card.css("p").css("a")[0].text           #Returns an instance of my Photographer
            img_link = card.css('img.lazy')[0]['data-lazy-src']
            book_title = card.css('h3 a').text
            authors_bio = card.css("p").css("p")[0].text

        
            photo_obj.name = photo_name
            photo_obj.image = img_link
            photo_obj.title = book_title
            photo_obj.bio = authors_bio

            binding.pry
        end
        
    end

    
end 

# author_web_link = 
# link_to_buy = 

