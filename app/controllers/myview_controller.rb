class MyviewController < ApplicationController
  def index
  	u = current_user
  	from_u = User.find(1)
  	#from_u = User.where(:id => 6)
  	@from_u = from_u.last_name
  	@feedbacks = u.feedbacks.all
  end

  def edit
	@feedback = Feedback.find(params[:id])
  end
  
end
