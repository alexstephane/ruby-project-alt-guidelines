require_relative "../lib/customer.rb"
require_relative "../lib/movie.rb"
require_relative "../lib/redbox.rb"

#creating customer
alex=Customer.find_or_create_by(userName:"alex_steph")
rahel=Customer.find_or_create_by( userName:"rahel")
romina=Customer.find_or_create_by(userName:"romina")

#creating movies

movie1=Movie.find_or_create_by(title:"Titanic", Date:"2016", quantity: 3)
movie2=Movie.find_or_create_by(title:"Homeland", Date:"2019", quantity: 5)
movie3=Movie.find_or_create_by(title:"Shark moview", Date:"2020", quantity: 3)


##creating redbox

Redbox_1=Redbox.find_or_create_by(alex, movie1,rating: 2)
Redbox_2=Redbox.find_or_create_by(romina, movie2 ,rating: 3)
Redbox_3=Redbox.find_or_create_by(romina, movie3, rating: 1)
Redbox_4=Redbox.find_or_create_by(rahel, movie3, rating: 2)
Redbox_5=Redbox.find_or_create_by(alex, movie1, rating: 1)


