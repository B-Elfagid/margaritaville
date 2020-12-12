class CLI 

  def start
     puts "Welcome"
     API.fetch_drinks
     self.menu
  end 

  def menu
    #give user an option to see list of drinks
    puts "would you like to see the list of drinks?"
    puts "Type 'yes' to continue or any other key to exit"

    #to get users input
    user_input = gets.strip.downcase
    
    #if the user says yes

    if user_input == 'yes' || user_input == 'y'
     puts "Good Choice!"
     #display the list
     display_list_of_drinks
    end 


 end 

    def display_list_of_drinks
        #acess all the drinks
        #print each one out
        Drink.all.each.with_index(1) do |drink, index|
        puts "#{index}. #{drink.name}"
        end    
    
        

  end   

end 