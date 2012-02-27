class School < ActiveRecord::Base

  has_many :users
  has_many :courses

  validates :name, :zipcode, :presence => true
end
