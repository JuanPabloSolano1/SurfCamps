class CreateSurfcamps < ActiveRecord::Migration[5.2]
  def change
    create_table :surfcamps do |t|
      t.string :name
      t.integer :stars
      t.integer :price

      t.timestamps
    end
  end
end
