class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :owner
      t.string :address
      t.integer :rooms
      t.integer :sqmt
      t.integer :floors
      t.boolean :air_cond
      t.float :price

      t.timestamps
    end
  end
end
