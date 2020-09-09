class Movie < ActiveRecord::Base

<<<<<<< HEAD
  has_many :redboxs
  has_many :customers, through: :redboxs
=======
  has_many :redboxes 
  has_many :customers, through: :redboxes
>>>>>>> fec81c4ed9b59a9dcc815e8b6060c0ac678cff55
end