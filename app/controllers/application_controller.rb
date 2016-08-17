class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :current_user

  def root
    t = (cookies['count'] || 1).to_i
    cookies['count'] = t + 1
    render text: "#{t} 回目の訪問です!\n"
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
