class Location < ApplicationRecord
  has_many :events
  has_many :tasks
  has_many :resource_assets
end
