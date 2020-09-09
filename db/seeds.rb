require_relative "../lib/customer.rb"
require_relative "../lib/movie.rb"
require_relative "../lib/redbox.rb"

#creating customer

alex_s=Customer.create(username:"alex_steph")
rahel_p=Customer.create(username:"rahel20")
romina_v=Customer.create(username:"romina20")

#creating movies

movie1=Movie.new(title:"Titanic",date:"1997",20)
movie2=Movie.new(title:"Homeland",date:"2015",5)
movie3=Movie.new(title:"Shark moview",date:"2020",3)


##creating redbox

Redbox_1=Redbox.new(alex, movie1,rating, 2)
Redbox_2=Redbox.new(romina_v,movie, movie1,rating, 3)
Redbox_3=Redbox.new(romina_v,movie3, rating, 1)
Redbox_4=Redbox.new(rahel_p,movie3, rating, 2)
Redbox_5=Redbox.new(alex,movie1, rating, 1)


