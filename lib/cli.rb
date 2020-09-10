
require  'pry'


def greeting
    puts "       Welcome to Redbox!"
    puts "       Do you have an account? (Y/N)"
    while true
        user_response = gets.chomp.downcase
        if user_response == 'Y'.downcase
            puts "\nPlease enter username"
            user_input = gets.chomp.downcase
            if Customer.exists?(userName: user_input)
                $user = Customer.find_by(userName: user_input)
                break
            else
    
                puts "\nUsername is not valid. Do you have an account? (Y/N)"
            end
        end

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