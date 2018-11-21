class Hub < ApplicationRecord
  has_many :resource_assets, as: :resourceable
  belongs_to :location
end

