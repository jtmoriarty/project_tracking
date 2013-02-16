class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :task_description
      t.integer :task_priority

      t.timestamps
    end
  end
end
