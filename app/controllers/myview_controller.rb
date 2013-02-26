class MyviewController < ApplicationController
  def index
  	u = current_user
  	@feedbacks = u.feedbacks.all
  end

  def edit
	@feedback = Feedback.find(params[:id])
  end
  
end
