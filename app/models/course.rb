class Course < ActiveRecord::Base

  belongs_to :school
  
  has_many :user_courses
  has_many :users, :through => :user_courses
  
  validates :dept, :course_no, :title, :presence => true
  validates :title, :uniqueness => true

end
