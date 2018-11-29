class EventsController < ApplicationController
  def show
    @task = Task.new
    @event = Event.find(params[:id])
    @tasks = @event.tasks
    @unassigned_tasks = @event.tasks.where("tasks.status = 'pending'")
    @volunteers = @event.user_roles.where(user_roles: { role: "volunteer" })
    @assets = ResourceAsset.all
    @hubs = Hub.all

    @markers = @assets.map do |asset|
      {
        lng: asset.location.longitude,
        lat: asset.location.latitude,
        color: '#E67E21'
      }
    end

    @markers += @tasks.map do |task|
      {
        lng: task.location.longitude,
        lat: task.location.latitude,
        color: '#33ACEE'
      }
    end

    @markers += @hubs.map do |task|
      {
        lng: task.location.longitude,
        lat: task.location.latitude,
        # color: '#C54D49'
      }
    end

  end
end

