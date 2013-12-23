class AddColumnIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weight_id, :integer
  end
end
