class A24::CLI
  
  def call
    menu
  end

  def menu
    system("clear") 
    puts "Welcome to the A24 Movies App! What would you like to do? "
      puts "-- Type 'list' to list all A24 films."
      puts "-- Type 'recommend' to recommend a movie from the list."
      puts "-- Type 'info' to get more info on a specific movie."
      puts "-- Type 'exit' to exit the program."

      input = nil

      while input != "exit"
        input = gets.strip.downcase
        case input
        when "list"
          A24::Scraper.create_film_list.each.with_index(1) do |film, i|
            puts "#{i}. #{film}"
          end
        when "recommend"
          puts A24::Scraper.create_film_list.sample
        when "exit"
          puts "have a great day!!"
        end
      end
    end

end