class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_param)
    if @task.save
      redirect_to tasks_index_path
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_param)
      redirect_to task_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to tasks_index_path
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  private

  def task_param
    params.require(:task).permit(:title, :description)
  end
end
