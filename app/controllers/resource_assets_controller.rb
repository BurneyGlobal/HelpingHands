class ResourceAssetsController < ApplicationController

  def index
    @task = Task.new
    @event = Event.find(params[:event_id])
    @tasks = @event.tasks
    @unassigned_tasks = @event.tasks.where("tasks.status = 'pending'")
    @volunteers = @event.user_roles.where(user_roles: { role: "volunteer" })
    @hubs = Hub.all

    @assets = ResourceAsset.all

    @markers = @assets.map do |asset|
      {
        lng: asset.location.longitude,
        lat: asset.location.latitude,
        color: '#E67E21'
      }
    end
  end
end
