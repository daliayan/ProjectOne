class CLI

    def self.begin
        Scraper.get_photographers
        hello
        make_selection
    end

    def self.hello
        puts "\n Hello! Here's 20 publications by famous photographers that you should know:".green
        puts ''
        sleep 1
        Photographer.list_photographers
        # puts "got photography $$$$$$"
    end

    def self.make_selection
            sleep 1
            puts "\n Which publication would you like to learn about? Type the corresponding 'number' below:".green
            puts ''
            sleep 1
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

        puts "\n Would you like to learn about a different photographer? Y/N".green
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
        puts "\n Thank you! I hope you learned something today.".blue
        puts ''
     end

     def self.yes
        yes = ["yes", "y", "YES", "Yes", "Y", "YEs", "YeS", "yES", "yeS", "yEs"]
     end

    def self.no
        no = ["no", "n", "NO", "No", "N", "nO"]
    end

     def self.error
        puts ''
        puts "\n Invalid input. Try again.".red
     end

end