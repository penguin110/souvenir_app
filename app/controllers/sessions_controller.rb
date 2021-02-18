class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "you have successfully login"
    else
      flash.now[:alert] = "Email or Password is invalid."
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice'ログアウトしました'

  end
  private
  def session_params
    params.require(:session).permit(:name,:email,:password)
  end
end
