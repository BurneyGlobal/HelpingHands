class Task < ApplicationRecord
  belongs_to :event
  belongs_to :urgency
  belongs_to :location
  has_many :resource_assets, as: :resourceable
end
