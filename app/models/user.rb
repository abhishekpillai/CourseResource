class User < ActiveRecord::Base
  
  has_secure_password
  
  belongs_to :school
  has_many :courses
  
  validates :name, :email, :password, :presence => true
  
end
