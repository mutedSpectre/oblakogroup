class TodosController < ApplicationController
  def index
    @project = Project.all
    @todos = Todo.all().order('id ASC')
  end

  def update
    Todo.update(params[:todo_id], :isCompleted => !params[:isCompleted])
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.errors.any?

    else
      @todo.save
      redirect_to '/'
    end
  end

  private
    def todo_params
      params.permit(:text, :project_id, :isCompleted)
    end
  end
