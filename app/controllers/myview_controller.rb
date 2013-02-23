class MyviewController < ApplicationController
  def index
  	u = current_user
  	@feedbacks = u.feedbacks.all
  end

  
end
