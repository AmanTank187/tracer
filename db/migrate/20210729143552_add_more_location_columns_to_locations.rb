class AddMoreLocationColumnsToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :city, :string
    add_column :locations, :postcode, :string
  end
end
