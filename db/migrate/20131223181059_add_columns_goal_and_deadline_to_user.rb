class AddColumnsGoalAndDeadlineToUser < ActiveRecord::Migration
  def change
    add_column :users, :goal, :string
    add_column :users, :deadline, :string
  end
end
