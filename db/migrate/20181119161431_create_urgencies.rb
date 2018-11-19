class CreateUrgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :urgencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
