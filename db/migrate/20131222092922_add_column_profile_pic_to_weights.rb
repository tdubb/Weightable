class AddColumnProfilePicToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :pic, :file
  end
end
