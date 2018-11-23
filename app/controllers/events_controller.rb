class EventsController < ApplicationController
  def index
    # @events = Event.all

    @events = Event.all.select(&:location)

    @markers = @events.map do |event|
      {
        lng: event.location.lng,
        lat: event.location.lat
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @tasks = @event.tasks
    @unassigned_tasks = @event.tasks.where("tasks.status = 'pending'")
    @urgent_tasks = @event.tasks
    # where(urgency: { name: "high" })
    @volunteers = @event.user_roles.where(user_roles: { role: "volunteer" })

    @markers = @tasks.map do |task|
      {
        lng: task.location.lng,
        lat: task.location.lat
      }
    end
  end
end
