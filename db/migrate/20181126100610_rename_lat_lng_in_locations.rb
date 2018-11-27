class RenameLatLngInLocations < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :lng, :longitude
    rename_column :locations, :lat, :latitude
  end
end
