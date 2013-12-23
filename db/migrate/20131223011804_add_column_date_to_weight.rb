class AddColumnDateToWeight < ActiveRecord::Migration
  def change
    add_column :weights, :date, :Date, default: Date.today
  end
end
