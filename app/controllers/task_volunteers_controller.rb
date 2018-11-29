class TaskVolunteersController < ApplicationController

  def create
    @task_volunteer = TaskVolunteer.new
    @task = Task.find(params[:task_id])
    @user = User.find(params[:user_id])
    @task_volunteer.task = @task
    @task_volunteer.user = @user
    @task_volunteer.save
    if @task.status == "pending"
      @task.status = "in progress"
      @task.save
    end
  end
end
