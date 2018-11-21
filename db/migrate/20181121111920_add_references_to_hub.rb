class AddReferencesToHub < ActiveRecord::Migration[5.2]
  def change
    add_reference :hubs, :location
  end
end
