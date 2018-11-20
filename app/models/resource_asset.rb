class ResourceAsset < ApplicationRecord
  belongs_to :resourceable, polymorphic: true
end
