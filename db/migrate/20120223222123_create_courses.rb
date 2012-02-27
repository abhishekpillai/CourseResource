class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :dept
      t.integer :course_no
      t.string :title
      t.string :website
      t.text :short_description
      t.integer :user_id
      t.integer :school_id

      t.timestamps
    end
  end
end
