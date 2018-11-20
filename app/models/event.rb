class Event < ApplicationRecord
  belongs_to :location
  has_many :user_roles
  has_many :users, through: :user_roles
  has_many :tasks
end
