class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "plain"
    else
      "application"
    end
  end

  def after_sign_in_path_for(current_user)
 	myview_index_path
  end

end
