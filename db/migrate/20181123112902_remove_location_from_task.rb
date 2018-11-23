class RemoveLocationFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :location
    remove_column :tasks, :latitude
    remove_column :tasks, :longitude
  end
end
