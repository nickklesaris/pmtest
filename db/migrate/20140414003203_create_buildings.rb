class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :postcode, null: false
      t.text :description
      t.integer :owner_id, null: false
      t.timestamps
    end
    add_index :buildings, :owner_id
  end
end
