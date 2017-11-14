class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @new = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @create = Task.new(task_params)
    if @create.save
      redirect_to '/index'
    else
      redirect_to '/new'
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to '/index'
    else
      redirect_to '/edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end


  private
  def task_params
    params.require(:task).permit(:description, :due_date, :responsible)
  end
end
