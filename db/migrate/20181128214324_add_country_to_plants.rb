class AddCountryToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :country, :string
  end
end
