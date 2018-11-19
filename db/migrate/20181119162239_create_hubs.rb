class CreateHubs < ActiveRecord::Migration[5.2]
  def change
    create_table :hubs do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
