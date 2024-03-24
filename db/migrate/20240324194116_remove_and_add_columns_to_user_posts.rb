class RemoveAndAddColumnsToUserPosts < ActiveRecord::Migration[7.1]
  def change
    remove_column :user_posts, :media_location
    add_column :user_posts, :title, :string
  end
end
