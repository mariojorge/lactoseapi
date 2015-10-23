class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :category_id
      t.decimal :middle_price
      t.boolean :lac_free
      t.boolean :gluten_free

      t.timestamps null: false
    end
  end
end
