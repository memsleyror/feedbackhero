class UserprojectsController < ApplicationController
  def index
  	@userprojects = Userproject.all
  end

  def show
  	@userproject = Userproject.find(params[:id])
  end

  def edit
  	@userproject = Userproject.find(params[:id])
  end

  def new
  	@userproject = Userproject.new
  end

  def create
	@userproject = Userproject.new(params[:userproject])
	if @userproject.save
		redirect_to @userproject
	else
		render :edit
	end
  end

  def update
	@userproject = Userproject.find(params[:id])
	if @userproject.update_attributes(params[:userproject])
		redirect_to @userproject
	else
		render :edit
	end
  end

  def destroy
	@userproject = Userproject.find(params[:id])
	@userproject_id = @userproject.id
	if @userproject.destroy
		redirect_to @userproject
	else
		flash[:error] = "Error deleting user project"
		redirect_to @userproject
	end

  end





end
