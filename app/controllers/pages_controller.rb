class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def events_index
    @events = Event.where.not(latitude: nil, longitude: nil)

    @markers = @events.map do |event|
      {
        lng: flat.longitude,
        lat: flat.latitude
      }
    end
  end
end
