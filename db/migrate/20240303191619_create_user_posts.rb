class CreateUserPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :user_posts do |t|
      t.integer :profile_id
      t.string :written_text
      t.string :media_location

      t.timestamps
    end
  end
end
