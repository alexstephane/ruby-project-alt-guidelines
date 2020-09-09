class Customer < ActiveRecord::Base

  has_many :redboxs
  has_many :movies, through: :redboxs
end