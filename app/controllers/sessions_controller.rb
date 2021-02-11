class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path, notice: "you have successfully login"
    else
      flash.now[:alert] = "Email or Password is invalid"
      render :new
    end
  end
  def destroy

  end
end
