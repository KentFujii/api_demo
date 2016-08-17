class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to :root
  end

  def destroy
    session[:user_id] = nil
    render json: {
      result: 'destroy'
    }
  end

  def oauth_failure
    render json: {
      result: 'oauth_failure'
    }
  end
end
