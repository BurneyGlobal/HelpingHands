class Task < ApplicationRecord
  belongs_to :event
  belongs_to :urgency
end
