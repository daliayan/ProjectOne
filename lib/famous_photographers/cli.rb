class CLI
    
    # def initialize
    #     Scraper.new("https://phlearn.com/magazine/top-20-photography-books-of-all-time/")
    # end

    def self.begin
        Scraper.get_photographers
        hello
    end

    def self.hello
        puts "Hello! Here's 20 publications by famous photographers that you should know:"
        puts ''
        Photographer.list_photographers

        num = self.make_selection
        Photographer.find_titles_display_obj(num)
    end

    def self.make_selection
        puts ''
        puts "\n Which photographer would you like to learn about?"
        choose = gets.chomp.to_i
    end

    
end



    # def exit_mode
    #     "Thank you! I hop"
 # list_photographers
        # input = gets.strip.downcase

        #     if input.to_i
        #     puts i
        #     list_photographers(i-1)

        #     else
        #     puts "Invalid input. Try again."
                
        #     end
        # self.user_input
        # end