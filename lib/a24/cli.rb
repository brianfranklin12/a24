class A24::CLI
  
  def call
    menu
  end

  def menu
    system("clear") 
    puts "Welcome to the A24 Movies App! What would you like to do? "
      puts "-- Type 'add' to add a movie you've seen."
      puts "-- Type 'list' to list all A24 films."
      puts "-- Type 'recommend' to recommend a movie you haven't seen yet."
      puts "-- Type 'delete' to delete a movie from your watched list."
      puts "-- Type 'exit' to exit the program."

      input = nil

      while input != "exit"
        input = gets.strip.downcase
        case input
        when "exit"
          puts "have a great day!!"
        end
      end
    end

end