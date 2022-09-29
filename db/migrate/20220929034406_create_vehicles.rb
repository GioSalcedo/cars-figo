class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :brand
      t.integer :year
      t.string :type
      t.integer :passangers
      t.integer :price
      t.integer :suitcase_capacity
      t.string :gearbox
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
