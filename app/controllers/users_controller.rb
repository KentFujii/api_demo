class UsersController < ApplicationController
  def index
    if @current_user
      render json: @current_user
    else
      render json: {
        facebook: '/auth/facebook',
        linkedin: '/auth/linkedin'
      }
    end
  end

  def edit
  end

  def update
    
  end
end
