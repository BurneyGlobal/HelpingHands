class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :description
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :status, default: "pending"
      t.string :name
      t.references :event, foreign_key: true
      t.references :urgency, foreign_key: true

      t.timestamps
    end
  end
end
