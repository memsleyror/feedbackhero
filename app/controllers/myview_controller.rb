class MyviewController < ApplicationController
  def index
  	u = current_user
  	@feedbacks = u.feedbacks.all
  	@userbadges = u.user_badges.all
  	@feedbackleft = Feedback.where(:from_user => current_user)
  	@badgesent = UserBadge.where(:from_user => current_user)
  end

  def edit
	@feedback = Feedback.find(params[:id])
  end
  
end
