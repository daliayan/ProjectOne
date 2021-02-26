class CLI
    
    def initialize
        Scraper.new("https://phlearn.com/magazine/top-20-photography-books-of-all-time/")
    end

    def self.begin
        Scraper.get_page
        page_welcome
        choose
        Photographer.list_photographers
    end

    def self.page_welcome
        puts "Welcome! Here's 20 photographers you should know:"
        gets.chomp
    end

    def exit_mode
        "Thank you! I hop"

    def choose
        list_photographers
        input = gets.strip.downcase

            if input.to_i
            puts i
            list_photographers(i-1)

            else
            puts "Invalid input. Try again."
                
            end
        self.user_input
        end
    end
end