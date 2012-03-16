class Resource < ActiveRecord::Base
  belongs_to :source, :polymorphic => true
  # has_many :user_course_resources
end
