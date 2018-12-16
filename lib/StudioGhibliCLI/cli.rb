# Our CLI controller
class StudioGhibliCLI::CLI
  
  def call
    StudioGhibliCLI::StudioGhibliAPI.new.list_films
    puts "Welcome to the Studio Ghibli CLI!"
    start
  end  

   def start
     puts ""
     puts "Please type out of movie you would like more information on? I have information on the following..."
     input = gets.strip.to_i
     # insert notes here

     print_film(film)

     puts ""
     puts "Would you like to see another film? Enter Y or N"

     input = gets.strip.downcase
     if input == "y"
       start
     elsif input == "n"
       puts ""
       puts "Thank you very much, have an awesome day!"
       exit
    else
      puts ""
      puts "I don't understand. Would you like to see another film? Enter Y or N."
      start
    end
  end    

  def print_film(film)
    puts ""
    puts "#{film.title}"
  end
end  
# to go back to the list to option to the interface you can loop like " when "list" you can call back the "list_deals"
# you can do an else statement when something is out of the commands like " else puts "not sure what you mean, please type list"
