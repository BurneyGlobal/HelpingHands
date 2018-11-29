class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :design]

  def home
    @events = Event.where(name: "Flood in Copenhagen")
  end

  def design
    # @volunteer = @event.user_roles.where(user_roles: { role: "volunteer" })
  end
end
