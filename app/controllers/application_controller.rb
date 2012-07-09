class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  before_filter :set_time_zone

  def set_time_zone
    if current_user
      Time.zone = current_user.time_zone || Wolfpack::Application.config.time_zone
    else
      Time.zone = Wolfpack::Application.config.time_zone
    end
  end
end
