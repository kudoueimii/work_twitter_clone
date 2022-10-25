class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task.update(task_params)
  end

  def destroy
    @local_station.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail)
  end


end
