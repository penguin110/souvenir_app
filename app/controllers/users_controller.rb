class UsersController < ApplicationController
  def index
    # @users = current_user.users.find(params[:id])
    @user_posts = User.find(current_user.id).souvenirs
    # @souvenir = Souvenir.find_by(id:params[:souvenir_id])
    # @souvenirs = Souvenir.where(prefecture_id: params[:prefecture_id])
    
  end

  def new
    @users = User.new
  end

  def show
    @users = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice:"ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_show_path
    else
      render "edit"
    end
  end

  def destroy
    @users = User.find_by(id: params[:id])
    @users.del_flg = 1
      if @users.save
      redirect_to root_path
      end

  end


  private
  def user_params
    params.require(:user).permit(:name,:handle_name,:email,:password_digest,:password,:password_confirmation,:souvenir_id)
  end
  
end
