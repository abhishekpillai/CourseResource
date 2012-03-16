class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :source_id
      t.string :source_type

      t.timestamps
    end
  end
end
