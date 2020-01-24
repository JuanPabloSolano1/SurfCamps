class AddLocationToSurfcamp < ActiveRecord::Migration[5.2]
  def change
    add_reference :surfcamps, :location, foreign_key: true
  end
end
