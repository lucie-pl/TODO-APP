class TodoTasksController < ApplicationController
  def index
    @todo_tasks = TodoTask.all
    render json: @todo_tasks
  end

  def show
    @todo_task = TodoTask.find(params[:id])
    render json: @todo_task
  end

  def create
    @todo_task = TodoTask.create(
      task: params[:task],
      completed: params[:completed]
    )
    render json: @todo_task
  end

  def update
    @todo_task = TodoTask.find(params[:id])
    @todo_task.update(
      task: params[:task],
      completed: params[:completed]
    )
    render json: @todo_task
  end

  def destroy
    @todo_tasks = TodoTask.all
    @todo_task = TodoTask.find(params[:id])
    @todo_task.destroy
    render json: @todo_tasks
  end
end
