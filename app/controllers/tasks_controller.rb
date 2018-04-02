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

  private

  def task_param
    params.require(:task).permit(:title, :description)
  end
end
