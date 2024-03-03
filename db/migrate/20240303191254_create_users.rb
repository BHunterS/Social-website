class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :country
      t.string :date_of_birth
      t.string :name
      t.string :surname
      t.string :photo

      t.timestamps
    end
  end
end
