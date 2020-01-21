class CreateSurcamps < ActiveRecord::Migration[5.2]
  def change
    create_table :surcamps do |t|
      t.string :name
      t.integer :stars
      t.integer :price

      t.timestamps
    end
  end
end
