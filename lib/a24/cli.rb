class A24::CLI
  
  def call
    menu
  end

  def menu
    system("clear") 
    puts "Welcome to the A24 Movies App! What would you like to do? "

    input = nil

    while input != "exit"
      puts "-- Type 'list' to list all A24 films."
      puts "-- Type 'recommend' to recommend a movie from the list."
      puts "-- Type 'info' to get more info on a specific movie."
      puts "-- Type 'exit' to exit the program."
      puts ""
      input = gets.strip.downcase
      case input
      when "list"
        A24::Film.all.each.with_index(1) do |film, i|
          puts "#{i}. #{film.title}"
        end
      when "recommend"
        sample = A24::Film.all.sample
        A24::Film.get_info_or_display_info(sample)
      when "info"
        puts "Enter the name of the film you want more info on: "
        name = gets.strip.downcase
        A24::Film.all.each do |film|
          if film.title.downcase == name
            A24::Film.get_info_or_display_info(film)
          end
        end
      when "exit"
        puts "Have a great day!!"
      else
        puts "I didn't understand your request."
      end
    end
  end

end