class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.boolean :done
      t.datetime :start_on
      t.datetime :end_on
      t.integer :remind_days_ago
      t.integer :priority
      t.integer :category_id
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
