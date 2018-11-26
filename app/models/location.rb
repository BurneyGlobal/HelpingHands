class Location < ApplicationRecord
  has_many :events
  has_many :tasks
  has_many :resource_assets

  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?
end
