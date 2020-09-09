class Movie < ActiveRecord::Base

  has_many :redboxs
  has_many :customers, through: :redboxs
end