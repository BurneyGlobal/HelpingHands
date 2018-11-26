class TasksController < ApplicationController
  before_action :set_event

  def index
  end

  def show
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
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def new_task_params
    params.require(:task).permit(:name, :description, :event_id, :urgency_id, :status)
  end
end
