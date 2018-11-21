class Profession < ApplicationRecord
  has_many :users, dependent: :destroy

end
