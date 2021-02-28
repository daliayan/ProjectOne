class Scraper

    # @@doc = class variable that stores my Nokogiri parsing gem
    

    def self.get_photographers
        @@doc = Nokogiri::HTML(open("https://phlearn.com/magazine/top-20-photography-books-of-all-time/"))
        
        @@doc.css("div.list-card").each do |card|
            photo_obj = Photographer.new                        #The creation of my object
            full_book_title = card.css("a")[0].text          #Returns an instance of my Photographer
            img_link = card.css('img.lazy')[0]['data-lazy-src']
            book_title = card.css('h3 a em').text
            authors_summary = card.css("p").css("p").text
            author_name = card.css("p").css("p a").text
            buy_book = card.css('a').first['href']
            

        
            photo_obj.name = full_book_title
            photo_obj.image = img_link
            photo_obj.title = book_title
            photo_obj.summary = authors_summary
            photo_obj.author = author_name
            photo_obj.purchase = buy_book

            
        end
    end
    
end 