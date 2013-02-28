class MyviewController < ApplicationController
  def index
  	u = current_user
  	@feedbacks = u.feedbacks.all
  	#@userbadges = u.user_badge.all
  end

  def edit
	@feedback = Feedback.find(params[:id])
  end
  
end
