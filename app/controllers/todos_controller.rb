class TodosController < ApplicationController
  def index
    @todos = Todo.all().order('id ASC')
    respond_to do |format|
      format.json {render :json => @todos}
    end
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
