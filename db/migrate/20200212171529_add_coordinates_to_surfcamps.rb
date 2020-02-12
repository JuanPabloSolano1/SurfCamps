class AddCoordinatesToSurfcamps < ActiveRecord::Migration[5.2]
  def change
    add_column :surfcamps, :latitude, :float
    add_column :surfcamps, :longitude, :float
  end
end
