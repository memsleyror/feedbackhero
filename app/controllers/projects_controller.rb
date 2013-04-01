class ProjectsController < ApplicationController
  def index
  	@projects = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  end

  def edit
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
  end

  def create
	@project = Project.new(params[:project])
	if @project.save
		redirect_to @project
	else
		render :edit
	end
  end

  def update
	@project = Project.find(params[:id])
	if @project.update_attributes(params[:project])
		redirect_to @project
	else
		render :edit
	end
  end

  def destroy
	@project = Project.find(params[:id])
	@project_id = @project.id
	if @project.destroy
		respond_with(@project_id, :location => projects_path)
	else
		flash[:error] = "Error deleting project"
		redirect_to @project
  end

end



end
