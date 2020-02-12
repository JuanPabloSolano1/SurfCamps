class AddAddressToSurfcamps < ActiveRecord::Migration[5.2]
  def change
    add_column :surfcamps, :address, :string
  end
end
