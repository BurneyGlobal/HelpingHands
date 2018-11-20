class CleanUpLocation < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :location
    remove_column :events, :latitude
    remove_column :events, :longitude
    remove_column :hubs, :location
    remove_column :hubs, :latitude
    remove_column :hubs, :longitude
  end
end
