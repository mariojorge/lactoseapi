class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.string :address
      t.integer :coordinate_x
      t.integer :coordinate_y

      t.timestamps null: false
    end
  end
end
