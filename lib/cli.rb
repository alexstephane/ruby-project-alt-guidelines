
require 'pry'
require "rainbow"


def main_menu
    puts Rainbow(" Welcome to Redbox!").red
    puts "Do you have an account? (Y/N)"

    
        user_response = gets.chomp.downcase
        
        if user_response == 'Y'.downcase
            puts Rainbow("\nPlease enter username").blue
            user_input = gets.chomp.downcase
            user=  Customer.find_by(userName: user_input)
            
               user_menu(user)

        else 
            
            user_response == 'N'.downcase
            create_account
            #binding.pry
    
        end
    
end





def create_account
    puts "\nLet's create an account!"
        puts "Please enter your name"
        
            username = gets.chomp.downcase
            puts "\nWhat is your username?"
            name = gets.chomp
   user= Customer.create(userName: username, name: name)
            
                #binding pry
                  
                #instance.update(column: value)
               
               user_menu(user)
        
end

def list_movies(user)
  Movie.all.each do |movie|
   puts movie.title
   
    
  end
  sleep(2)
  user_menu(user)
  
#binding pry
   
    
end

def checkout(user)
  
    puts "what movie would you like to see?"
  sleep(1)
    title= gets.chomp

   movie= Movie.find_by(title: title)
   #binding.pry

    Redbox.create(customer_id: user.id, movie_id: movie.id )
    movie.quantity += 1
    movie.save
    sleep(2)
    puts "\nThank you for checking out #{title}\n"
    sleep(2)

    
    user_menu(user)
    sleep(1)
    
   #binding pry
end



def  history(user)
    puts "user history "
    user.movies.each do |movie|
       puts movie.title
    end
    sleep(2)
    user_menu(user)
end

def delete(user)
   
  user.destroy

  main_menu

  
end



def user_menu(user)


    puts Rainbow(                              " WELCOME #{user.userName.upcase} ").red
    puts "         1. to see a list of all  movies" 
    puts "         2. to check out a movie " 
    puts "         3. see a list of your transaction" 
    puts "         4. Delete Account" 
    puts "         5. Exit" 
    puts Rainbow( "\n                        
      sleep(1)
     Please select from the options above using numbers (1-5) as your input:").red
     
      
    user_input = gets.chomp
     

    case user_input
  
        # using when 
        when "1"
          puts 'Listing all movies'
          list_movies(user)
          
        when "2"  
          puts 'checking out movie'
          checkout(user)
          
        when "3"  
          puts 'view history'
          history(user)
          
         when "4"  
          puts 'delete user'
          delete(user)
          
        else  
          puts "Option not found"
          exit
          
        
        
    end

    



end























    

        

    # def run 
    #     name= welcome
    #     find=find_name
    #     puts name

        
        
        
    #     login_or_sign_up
    #     action1 #As a user,  I want to enter a year and receive a list of movies for that year. 
    #     action2 #As a user, I want to be able to checkout a movie(create/update)
    #     action3 #As a user, I want to get rating above a certain number(read)
    #     action4 #As a user, i want a list of all movies checked (History of transactions) 
    #     action5 #As a user, I want to edit my user_name  or name(update)
    #     action6 #As a user I can delete my account (delete)


#      end

    

     
# run

   
        

    



# def existsCheck( db, id )
#     temp = db.execute( "select 1 where exists(
#         select 1
#         from Products
#         where promoID = ?
#     ) ", [id] ).any?
# end