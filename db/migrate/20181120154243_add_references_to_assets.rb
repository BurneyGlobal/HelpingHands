class AddReferencesToAssets < ActiveRecord::Migration[5.2]
  def change
    add_reference :resource_assets, :category
  end
end
