class ResourceAsset < ApplicationRecord
  belongs_to :resourceable, polymorphic: true, optional: true
  belongs_to :location
  belongs_to :category
end
