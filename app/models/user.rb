class User < ActiveRecord::Base
  
  has_secure_password
  
  belongs_to :school
  has_many :user_courses, :dependent => :destroy
  has_many :courses, :through => :user_courses
  
  validates :name, :email, :password, :presence => true
  
end
