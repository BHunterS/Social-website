class CreatePostComments < ActiveRecord::Migration[7.1]
  def change
    create_table :post_comments do |t|
      t.integer :post_id
      t.integer :profile_id
      t.string :comment_text

      t.timestamps
    end
  end
end
