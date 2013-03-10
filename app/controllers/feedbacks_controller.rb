class FeedbacksController < ApplicationController
  def index
  	#@feedbacks = Feedback.all
  	@feedbacks = Feedback.where(:hide => false).order("created_at DESC")
  	@userbadges = UserBadge.all
  end

  def show
  	@feedback = Feedback.find(params[:id])
  end

  def new
  	@feedback = Feedback.new
  end

  def edit
  	@feedback = Feedback.find(params[:id])
  end


  def create
	@feedback = Feedback.new(params[:feedback])
	if @feedback.save
		redirect_to @feedback
	else
		render :edit
	end
  end

  def update
	@feedback = Feedback.find(params[:id])
	if @feedback.update_attributes(params[:feedback])
		redirect_to @feedback
	else
		render :edit
	end
  end

  def destroy
	@feedback = Feedback.find(params[:id])
	@feedback_id = @feedback.id
	if @feedback.destroy
		respond_with(@feedback_id, :location => feedbacks_path)
		#redirect_to roles_path
	else
		flash[:error] = "Error deleting feedback"
		redirect_to @feedback
	end

  end


end
