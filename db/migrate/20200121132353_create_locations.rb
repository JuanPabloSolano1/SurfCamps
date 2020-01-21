class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :average_price
      t.string :surf_location_name

      t.timestamps
    end
  end
end
