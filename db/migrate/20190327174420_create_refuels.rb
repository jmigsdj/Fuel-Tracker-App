class CreateRefuels < ActiveRecord::Migration[5.2]
  def change
    create_table :refuels do |t|
      t.date :date
      t.string :driver
      t.string :vehicle
      t.integer :odometer_reading
      t.string :refuel_location
      t.decimal :fuel_litters

      t.timestamps
    end
  end
end
