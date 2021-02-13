class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def show
    @users = User.find_by(id: params[:id])
  end

  def edit

  end

  def create
    @users = User.new(user_params)
    if @users.save
      redirect_to root_path
    end
  end
  private
  def user_params
    params.require(:user).permit(:name,:handle_name,:email,:password_digest,:password,:password_confirmation)
  end
  
end
