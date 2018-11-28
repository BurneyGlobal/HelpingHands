class UserRole < ApplicationRecord
  belongs_to :event
  belongs_to :user

  def icon
    if user.profession.name == "healthcare"
      return "fas fa-user-md color-blue"
    elsif user.profession.name == "administration"
      return "fas fa-pencil-alt color-yellow"
    elsif user.profession.name == "construction"
      return "fas fa-wrench color-brown"
    elsif user.profession.name == "general_help"
      return "fas fa-dolly color-green"
    end
  end
end
