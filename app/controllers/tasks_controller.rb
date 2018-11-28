class TasksController < ApplicationController
  before_action :set_event

  def index
    @tasks = Task.all

    @markers += @tasks.map do |task|
      {
        lng: task.location.longitude,
        lat: task.location.latitude,
        color: '#33ACEE'
      }
    end
  end

  def show
    @task = Task.find(params[:id])
    @volunteers = @event.user_roles.where(user_roles: { role: "volunteer" })
    @assets = ResourceAsset.all
    @hubs = Hub.all
    @tasks = @event.tasks

    @unassigned_tasks = @event.tasks.where("tasks.status = 'pending'")

    @markers = @unassigned_tasks.map do |task|
      {
        lng: task.location.longitude,
        lat: task.location.latitude,
        color: '#33ACEE'
      }
    end
  end

  def create
    @task = Task.new(new_task_params)
    location = Location.find_or_create_by(name: params[:location])
    @task.location = location
    @task.event = @event
    # @task_volunteer = @task.user
    if @task.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end
  end

  def edit
  end

  def update

  end

  def destroy
    @task.destroy
    redirect_to
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def new_task_params
    params.require(:task).permit(:name, :description, :event_id, :urgency_id, :status)
  end
end
