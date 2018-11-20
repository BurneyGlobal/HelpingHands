class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.float :lat
      t.float :lng

      t.timestamps
    end
    add_reference :events, :location
    add_reference :tasks, :location
    add_reference :resource_assets, :location
  end
end
