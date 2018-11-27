class HubsController < ApplicationController
  def index
    @task = Task.new
    @event = Event.find(params[:event_id])
    @tasks = @event.tasks
    @unassigned_tasks = @event.tasks.where("tasks.status = 'pending'")
    @volunteers = @event.user_roles.where(user_roles: { role: "volunteer" })
    @assets = ResourceAsset.all

    @hubs = Hub.all

    @markers = @hubs.map do |hub|
      {
        lng: hub.location.longitude,
        lat: hub.location.latitude,
        color: '#C54D49'
      }
    end
  end
end
