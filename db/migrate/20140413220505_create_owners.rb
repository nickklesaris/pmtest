class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :fname, null: false
      t.string :lname, null: false
      t.string :email, null: false
      t.string :company
      t.timestamps
    end
    add_index :owners, :email, unique: true
  end
end
