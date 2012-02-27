class Course < ActiveRecord::Base

  belongs_to :school
  belongs_to :user
  
  validates :dept, :course_no, :title, :presence => true
  validates :title, :uniqueness => true

end
