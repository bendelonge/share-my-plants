class RemoveAddressFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :address, :hstore
  end
end
