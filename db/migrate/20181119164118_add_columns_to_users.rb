class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_reference :users, :profession, foreign_key: true
    add_column :users, :is_active, :boolean, default: true, null: false
    add_column :users, :photo, :string
  end
end
