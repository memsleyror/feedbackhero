class ProjectmilestonesController < ApplicationController
  def index
    @projectmilestones = Projectmilestone.all
  end

  def show
    @projectmilestone = Projectmilestone.find(params[:id])
  end

  def edit
    @projectmilestone = Projectmilestone.find(params[:id])
  end

  def new
    @projectmilestone = Projectmilestone.new
  end

  def create
  @projectmilestone = Projectmilestone.new(params[:projectmilestone])
  if @projectmilestone.save
    redirect_to @projectmilestone
  else
    render :edit
  end
  end

  def update
  @projectmilestone = Projectmilestone.find(params[:id])
  if @projectmilestone.update_attributes(params[:projectmilestone])
    redirect_to @projectmilestone
  else
    render :edit
  end
  end

  def destroy
  @projectmilestone = Projectmilestone.find(params[:id])
  @projectmilestone_id = @projectmilestone.id
  if @projectmilestone.destroy
    redirect_to @projectmilestone
  else
    flash[:error] = "Error deleting user project"
    redirect_to @projectmilestone
  end

  end




end
