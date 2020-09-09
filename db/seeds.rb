require_relative "../lib/customer.rb"
require_relative "../lib/movie.rb"
require_relative "../lib/redbox.rb"

#creating customer
alex=Customer.create(username:"alex_steph")
rahel=Customer.create( username:"rahel")
romina=Customer.create(username:"romina")

#creating movies

movie1=Movie.new(name:"Titanic",date:"2016", 3)
movie2=Movie.new(name:"Homeland",date:"2019", 5)
movie3=Movie.new(name:"Shark moview",date:"2020", 3)


##creating redbox

Redbox_1=Redbox.new(alex, movie1,rating, 2)
Redbox_2=Redbox.new(milina_j,movie: movie1,rating, 3)
Redbox_3=Redbox.new(milina_j,movie3, rating, 1)
Redbox_4=Redbox.new(rahel_p,movie3, rating, 2)
Redbox_5=Redbox.new(alex,movie1, rating, 1)


