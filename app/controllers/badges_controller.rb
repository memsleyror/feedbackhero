class BadgesController < ApplicationController
  def index
  	@badges = Badge.all
  end

  def edit
	@badge = Badge.find(params[:id])
  end

  def show
	@badge = Badge.find(params[:id])
  end

  def create
	@badge = Badge.new(params[:badge])
	if @badge.save
		redirect_to @badge
	else
		render :edit
	end
  end

  def new
  	@badge = Badge.new
  end

  def update
	@badge = Badge.find(params[:id])
	if @badge.update_attributes(params[:badge])
		redirect_to @badge
	else
		render :edit
	end
  end

  def destroy
	@badge = Badge.find(params[:id])
	if @badge.destroy
		redirect_to badges_path
	else
		flash[:error] = "Error deleting badge"
		redirect_to @badge
	end
  end	





end
