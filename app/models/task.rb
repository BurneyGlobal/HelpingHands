class Task < ApplicationRecord
  belongs_to :event
  belongs_to :urgency
  belongs_to :location
  has_many :resource_assets, as: :resourceable
  has_many :task_volunteers
  has_many :users, through: :task_volunteers

  STATUS = ["pending", "in progress", "done"]
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true, inclusion: { in: STATUS }
end
