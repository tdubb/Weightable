class AddColumnProfilePicToWeight < ActiveRecord::Migration
  def change
    add_column :weights, :pic, :string
  end
end
