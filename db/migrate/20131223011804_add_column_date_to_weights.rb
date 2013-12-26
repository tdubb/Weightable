class AddColumnDateToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :date, :date
  end
end
