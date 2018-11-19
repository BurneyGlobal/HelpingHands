class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :name

      t.timestamps
    end
  end
end
