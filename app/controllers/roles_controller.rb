class RolesController < ApplicationController
  respond_to :js, :html

def index
  	@roles = Role.all
end

def new
	@role = Role.new
end

def edit
	@role = Role.find(params[:id])
end

def show
	@role = Role.find(params[:id])
end

def create
	@role = Role.new(params[:role])
	if @role.save
		#UserMailer.welcome_email(current_user).deliver
		redirect_to @role
	else
		render :edit
	end
end

def update
	@role = Role.find(params[:id])
	if @role.update_attributes(params[:role])
		redirect_to @role
	else
		render :edit
	end
end

def destroy
	@role = Role.find(params[:id])
	@role_id = @role.id
	if @role.destroy
		respond_with(@role_id, :location => roles_path)
		#redirect_to roles_path
	else
		flash[:error] = "Error deleting role"
		redirect_to @role
	end

end
end
