class CreateListOfSocialNetworkingServices < ActiveRecord::Migration[7.1]
  def change
    create_table :list_of_social_networking_services do |t|
      t.integer :list_id
      t.string :name
      t.string :social_network_type
      t.string :focus

      t.timestamps
    end
  end
end
