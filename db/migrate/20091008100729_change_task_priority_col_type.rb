class ChangeTaskPriorityColType < ActiveRecord::Migration
  def self.up
    change_column :tasks, :priority , :integer
  end

  def self.down
    change_column :tasks, :priority , :string
  end

end
