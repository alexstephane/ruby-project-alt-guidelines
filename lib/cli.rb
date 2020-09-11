
require 'pry'


def main_menu
    puts " Welcome to Redbox!"
    puts "Do you have an account? (Y/N)"

    
        user_response = gets.chomp.downcase
        
        if user_response == 'Y'.downcase
            puts "\nPlease enter username"
            user_input = gets.chomp.downcase
            Customer.find_by(userName: user_input)

               user_menu(user_input)

        else 
            
            user_response == 'N'.downcase
            create_account
            #binding.pry
    
        end
    
end





def create_account
    puts "\nLet's create an account!"
        puts "Please enter your username"
        
            username = gets.chomp.downcase
            puts "\nWhat is your name?"
            name = gets.chomp
            Customer.create(userName: username, name: name)
            
                #binding pry
                  
                
               
        
end

def list_movies()
  Movie.all.each do |movie|
   puts  movie.title
    
  end
  
#binding pry
   
    
end

def checkout(user)
    puts " movie checkedout"
end

def  history(user)
    puts "user history "
end

def delete(user)
    puts "user deleted"
end



def user_menu(user)


    puts  " WELCOME #{user.upcase} "
    puts "         1. to see a list of all  movies" 
    puts "         2. to check out a movie " 
    puts "         3. see a list of your transaction" 
    puts "         4. Delete Account" 
    puts "         5. Exit" 
    puts "\n                        
    
    Please select from the options above using numbers (1-5) as your input:"

    user_input = gets.chomp
     

    case user_input
  
        # using when 
        when "1"
          puts 'Listing all movies'
          list_movies()
          
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