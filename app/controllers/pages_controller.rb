class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = Event.all.select(&:location)

    @markers = @events.map do |event|
      {
        lng: event.location.lng,
        lat: event.location.lat,
      }
    end
  end
end
