class SouvenirsController < ApplicationController
  def index
    if current_user
    @souvenirs = Souvenir.all.order(created_at: :desc)
    else
      @souvenirs = []
    end
  end

  def new
    @souvenirs = Souvenir.new
  end

  def show
    @souvenirs = Souvenir.find_by(id: params[:id])
  end

  def create
    @souvenirs = current_user.souvenirs.build(souvenir_params)
       if @souvenirs.save
      redirect_to root_path, notice:'投稿しました'
    else
    render "new"
    end
  end

  def edit
    @souvenirs = Souvenir.find_by(id: params[:id])
  end

  def update
    @souvenirs = Souvenir.find_by(id: params[:id])
    if @souvenirs.update_attributes(souvenir_params)
      redirect_to show_path
    end
  end

  def destroy
    @souvenirs = Souvenir.find_by(id: params[:id])
    @souvenirs.del_flg = 1
      if @souvenirs.save
        redirect_to root_path
      end
  end

  private
  def souvenir_params
      params.require(:souvenir).permit(:name,:prefectures,:comment,:image_name,)
  end
end
