class AddColumnProfilePicToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :pic, :text
  end
end
