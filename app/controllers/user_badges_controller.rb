class UserBadgesController < ApplicationController
  def index
  	#@userbadges = UserBadge.where(:hide => false)
  	@userbadges = UserBadge.all
  end

  def show
  	@userbadge = UserBadge.find(params[:id])
  end

  def edit
  	@userbadge = UserBadge.find(params[:id])
  end

  def new
  	@userbadge = UserBadge.new
  end

  def create
	@userbadge = UserBadge.new(params[:user_badge])
	if @userbadge.save
		redirect_to @userbadge
	else
		render :edit
	end
  end

  def update
	@userbadge = UserBadge.find(params[:id])
	if @userbadge.update_attributes(params[:user_badge])
		redirect_to @userbadge
	else
		render :edit
	end
  end

  def destroy
	@userbadge = UserBadge.find(params[:id])
	@userbadge_id = @userbadge.id
	if @userbadge.destroy
		redirect_to @userbadge
		#respond_with(@userbadge_id, :location => user_badges_path)
	else
		flash[:error] = "Error deleting user badge"
		redirect_to @userbadge
	end

  end

end
