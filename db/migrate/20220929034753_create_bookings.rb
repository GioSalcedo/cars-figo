class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :s_date
      t.date :f_date
      t.references :users, null: false, foreign_key: true
      t.references :vehicles, null: false, foreign_key: true

      t.timestamps
    end
  end
end
