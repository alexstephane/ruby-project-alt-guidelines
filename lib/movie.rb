class Movie < ActiveRecord::Base

  has_many :redbox
  has_many :customers, through: :redboxs
end