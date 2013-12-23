class AddColumnDateToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :date, :date, default: Date.today
  end
end
