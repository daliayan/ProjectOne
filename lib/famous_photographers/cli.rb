class CLI

    def self.begin
        Scraper.get_photographers
        hello
        make_selection
    end

    def self.hello
        puts "\n Hello! Here's 20 publications by famous photographers that you should know:"
        puts ''
        Photographer.list_photographers
        # puts "got photography $$$$$$"
    end

    def self.make_selection
            puts "\n Which publication would you like to learn about? Type the corresponding 'number' below:"
            puts ''
            choose = gets.chomp.to_i

            if choose > 0 && choose <= 20
                Photographer.find_titles_display_obj(choose)
                run_again
            else
                error
                make_selection
            end
    end 

    def self.run_again

        puts "\n Would you like to learn about a different photographer? Y/N"
        puts ''
            
        user_input = gets.chomp

        if yes.include?(user_input)
            puts ''
            Photographer.list_photographers
            make_selection
        elsif no.include?(user_input)
            puts ''
            exit_mode
        else
            error
            run_again
        end

    end

     def self.exit_mode
        puts "Thank you! I hope you learned something today."
        puts ''
     end

     def self.yes
        yes = ["yes", "y", "YES", "Yes", "Y"]
     end

    def self.no
        no = ["no", "n", "NO", "No", "N"]
    end

     def self.error
        puts ''
        puts "\n Invalid input. Try again."
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

=begin
            
         puts "\n Would you like to learn about a different photographer or would you like to exit?:"
        
        if yes_input
            make_selection
        elsif no_input
            exit_mode
        else
            error
            run_again
        end
    end

     def self.exit_mode
        puts "Thank you! I hope you enjoyed."
        return
     end

     def self.yes_input
        if yes == ["yes", "y", "YES", "Yes", "Y"]
            return yes
        else
            error
        end
     end

    def self.no_input
        if no == ["no", "n", "NO", "No", "N"]
            return no
        else
            error
        end
    end

     def self.error
        puts "Invalid input. Try again."
     end

=end