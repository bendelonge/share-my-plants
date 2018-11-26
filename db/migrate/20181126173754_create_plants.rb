class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :species
      t.integer :price_per_day
      t.string :city_location
      t.string :main_picture
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
