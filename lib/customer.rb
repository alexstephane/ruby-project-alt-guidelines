class Customer < ActiveRecord::Base

  has_many :redboxes
  has_many :movies, through: :redboxs
end