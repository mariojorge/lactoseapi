class CreateJoinTableProductLocation < ActiveRecord::Migration
  def change
    create_join_table :products, :locations do |t|
      # t.index [:product_id, :location_id]
      # t.index [:location_id, :product_id]
    end
  end
end
