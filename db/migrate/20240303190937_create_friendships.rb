class CreateFriendships < ActiveRecord::Migration[7.1]
  def change
    create_table :friendships do |t|
      t.integer :profile_request
      t.integer :profile_accept

      t.timestamps
    end
  end
end
