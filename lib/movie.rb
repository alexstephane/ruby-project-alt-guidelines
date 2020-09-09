class Movie < ActiveRecord::Base

  has_many :redboxes
  has_many :customers, through: :redboxes
end