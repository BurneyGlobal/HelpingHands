class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = Event.all.select(&:location)

    @markers = @events.map do |event|
      {
        lng: event.location.longitude,
        lat: event.location.latitude
      }
    end
  end
end
