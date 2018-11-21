class Urgency < ApplicationRecord
  has_many :tasks, dependent: :destroy
end
