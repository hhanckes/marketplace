class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :exception
#  skip_before_filter :verify_authenticity_token, if: :json_request?
  
  def set_time_zone
    @time_zone = params[:time_zone_name]
    if @time_zone
      cookies[:time_zone] = @time_zone if @time_zone
      render :text => "success"
    else
      render :text => "error"
    end
  end
  
  protected

  def json_request?
    request.format.json?
  end  
end
