class UsersController < ApplicationController
  def index
    @users = current_user.users.find(params[:id])
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
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice:"ユーザー「#{@users.name}」を登録しました。"
    else
      render :new
    end
  end
  private
  def user_params
    params.require(:user).permit(:name,:handle_name,:email,:password_digest,:password,:password_confirmation)
  end
  
end
