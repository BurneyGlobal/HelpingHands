class ResourceAsset < ApplicationRecord
  belongs_to :resourceable, polymorphic: true
  belongs_to :location
  belongs_to :category
end