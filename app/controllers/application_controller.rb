class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :sidebar_val

  
  def login_required
    redirect_to login_path unless current_user
  end

  def sidebar_val
    @prefectures = Prefecture.all
    @region_num = Prefecture.pluck(:region_id).uniq.count
  end

  private
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
