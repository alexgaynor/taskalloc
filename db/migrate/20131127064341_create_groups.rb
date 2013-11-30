class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.string :group_type
      t.string :address_street
      t.string :address_zipcode
      t.string :address_state
      t.integer :creator_id

      t.timestamps
    end
  end
end
