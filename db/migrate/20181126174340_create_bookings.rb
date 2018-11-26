class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status, default: 'pending'
      t.integer :total_price
      t.date :starting_date
      t.date :ending_date
      t.references :plant, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
