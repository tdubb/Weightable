class AddTwoColumnsToFollowing < ActiveRecord::Migration
  def change
    add_column :followings, :user_id, :integer
    add_column :followings, :followed_id, :integer
  end
end
