class CreateResourceAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_assets do |t|
      t.string :name
      t.integer :resourceable_id
      t.string :resourceable_type

      t.timestamps
    end
    add_index :resource_assets, [ :resourceable_type, :resourceable_id ]
  end
end
