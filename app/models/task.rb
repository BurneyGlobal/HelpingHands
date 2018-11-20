class Task < ApplicationRecord
  belongs_to :event
  belongs_to :urgency
  has_many :resource_assets, as: :resourceable
end
