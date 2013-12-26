class AddColumnGoalAndDeadlineToWeight < ActiveRecord::Migration
  def change
    add_column :weights, :goal, :string
    add_column :weights, :deadline, :string
  end
end
