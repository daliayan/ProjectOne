class CLI


    def start
        Scraper.get_photographers
        hello
        make_selection
    end

    def hello
        puts "\n Hello! Here's 20 publications by famous photographers that you should know:".green
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".green
        sleep 1
        Photographer.list_photographers
    end

    def make_selection
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".green
            puts "\n Which publication would you like to learn about? Type the corresponding digit below and hit 'Enter':".green
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

    def run_again
        sleep 2
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".green
        puts "\n Would you like to learn about a different photographer? Type yes or no and hit 'Enter'".green
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

     def exit_mode
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".blue
        puts "\n Thank you! I hope you learned something today.".blue
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".blue
     end

     def yes
        yes = ["yes", "y", "YES", "Yes", "Y", "YEs", "YeS", "yES", "yeS", "yEs"]
     end

    def no
        no = ["no", "n", "NO", "No", "N", "nO"]
    end

     def error
        puts "\n----------------------------".red
        puts "\n Invalid input. Try again.".red
        puts "\n----------------------------".red
     end

end