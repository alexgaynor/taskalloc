class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :priority
      t.string :category
      t.integer :cost
      t.string :start_location
      t.string :task_location
      t.string :end_location
      t.integer :estimated_time
      t.integer :total_time
      t.datetime :due_date
      t.boolean :started
      t.boolean :completed
      t.integer :passes
      t.integer :karma_value
      t.datetime :accepted_time
      t.datetime :completed_time
      t.integer :group_id
      t.integer :creator_id
      t.integer :owner_id
      t.integer :flaker_id

      t.timestamps
    end
  end
end
