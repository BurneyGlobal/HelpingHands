class EventsController < ApplicationController
  def show
    @task = Task.new
    @event = Event.find(params[:id])
    @tasks = @event.tasks
    @unassigned_tasks = @event.tasks.where("tasks.status = 'pending'")
    @volunteers = @event.user_roles.where(user_roles: { role: "volunteer" })
    @assets = ResourceAsset.all
    @hubs = Hub.all

    @markers = @tasks.map do |task|
      {
        lng: task.location.longitude,
        lat: task.location.latitude
      }
    end
  end
end
