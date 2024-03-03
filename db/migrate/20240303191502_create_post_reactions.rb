class CreatePostReactions < ActiveRecord::Migration[7.1]
  def change
    create_table :post_reactions do |t|
      t.integer :post_id
      t.integer :profile_id
      t.integer :reaction_id

      t.timestamps
    end
  end
end
