class AddResourceIdToUserCourses < ActiveRecord::Migration
  def change
    add_column :user_courses, :resource_id, :integer

  end
end
