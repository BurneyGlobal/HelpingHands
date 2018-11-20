class Hub < ApplicationRecord
  has_many :resource_assets, as: :resourceable
end

