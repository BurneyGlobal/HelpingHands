class Category < ApplicationRecord
  has_many :resource_assets, dependent: :destroy
end
