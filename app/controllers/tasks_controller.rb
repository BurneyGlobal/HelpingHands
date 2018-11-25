class TasksController < ApplicationController
  before_action :set_event

  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(new_task_params)
    @task.event = @event
    # @task.location = @location
    # @task_volunteer = @task.user
    if @task.save
      redirect_to event_path(@event)
    else
      render :new
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

  # def set_location
  #   @location = Location.find(params[:location_id])
  # end

  def new_task_params
    params.require(:task).permit(:name, :description, :location_id, :event_id, :urgency_id, :status)
  end
end
