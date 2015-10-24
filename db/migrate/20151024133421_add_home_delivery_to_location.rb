class AddHomeDeliveryToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :home_delivery, :boolean
  end
end
