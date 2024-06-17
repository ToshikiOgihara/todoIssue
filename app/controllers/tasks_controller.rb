class TasksController < ApplicationController
  def index
    @task_item = TaskItem.new()
    @task_items = TaskItem.all()
  end
  
  def create
    @task_item = TaskItem.new(task_item_params)
    
    if @task_item.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
  
  def edit
    @task_item = TaskItem.find(params[:id])
  end
  
  def update
    @task_item = TaskItem.find(params[:id])
    @task_item.update(task_item_params)
    redirect_to root_path
  end
  
  def destroy
    @task_item = TaskItem.find(params[:id])
    @task_item.destroy()
    redirect_to root_path
  end
  
  private
  def task_item_params
    params.require(:task_item).permit(:title)
  end
end
