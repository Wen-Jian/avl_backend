class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :shop, null: false
      t.references :user, null: false
      t.datetime :booking_time, null: false
      t.timestamps
    end
  end
end
