class CLI

    def self.begin
        Scraper.get_photographers
        hello
        make_selection
    end

    def self.hello
        puts "Hello! Here's 20 publications by famous photographers that you should know:"
        puts ''
        Photographer.list_photographers
        # puts "got photography $$$$$$"
    end

    def self.make_selection
            puts "\n Which publication would you like to learn about? Type the corresponding 'number' below:"
            choose = gets.chomp.to_i
           # Photographer.find_titles_display_obj(choose)
            #run_again

            if choose > 0 && choose <= 20
                puts "### Within range"
                Photographer.find_titles_display_obj(choose)
                run_again
            else
                puts "#### OUT OF RANGE"
                error
                make_selection
            end
    end 

    def self.run_again

        puts "\n Would you like to learn about a different photographer or would you like to exit?:"
        # confitional
        #     if y/yes - array of values
        #         call make selection
        #     elsif n/no
        #         exit
        #     else
        #         error
        #         run_again
        #     end
        make_selection
        #choose = gets.chomp.to_i
    end

     def self.exit_mode
        puts "Thank you! I hope you enjoyed."
        return
     end

     def self.error
        puts "ERROR! Try again."
     end

end




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