class UserCourse < ActiveRecord::Base

  belongs_to :user
  belongs_to :course
  
  belongs_to :resource

end
