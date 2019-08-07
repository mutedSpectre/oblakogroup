class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @todos = Todo.order('id ASC')

    respond_to do |format|
    	format.html
  		format.json {render :json => @projects.to_json(:include => [:todo])}
	  end

  end

  def show
  end

  def create
  end
end
