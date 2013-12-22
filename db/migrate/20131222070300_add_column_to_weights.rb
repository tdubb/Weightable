class AddColumnToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :pounds, :integer
  end
end
