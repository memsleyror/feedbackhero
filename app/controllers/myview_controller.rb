class MyviewController < ApplicationController
  def index
  	u = current_user
  	 @feedbacks = u.feedbacks.order("created_at DESC").all
  	 @userbadges = u.user_badges.all
  	 @feedbackleft = Feedback.where(:from_user => current_user).order("created_at DESC")
  	 @badgesent = UserBadge.where(:from_user => current_user)
     @requestedfeedbacks = u.requestedfeedbacks.order("created_at DESC").all
    #@events = u.events
  end

  def edit
	@feedback = Feedback.find(params[:id])
  end
  
end
