# require_relative '../config/application'

# this is where you should use an ActiveRecord migration to

class CreateTasks < ActiveRecord::Migration[5.0]
  def change
      create_table :tasks do |t|
        t.integer :task_number, auto_increment: true
        t.string :description
        t.string :status
   end
  end
end