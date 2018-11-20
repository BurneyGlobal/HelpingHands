class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
      t.string :role
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
