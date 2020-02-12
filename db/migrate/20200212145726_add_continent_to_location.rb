class AddContinentToLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :continent, foreign_key: true
  end
end
