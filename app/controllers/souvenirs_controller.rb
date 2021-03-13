class SouvenirsController < ApplicationController
  def top
    @prefectures = Prefecture.all
    @region_num = Prefecture.pluck(:region_id).uniq.count
    @prefecture = Prefecture.find_by(prefecture_id: params[:prefecture_id])
    @region = Region.find_by(params[:id])
    @pre1 = Prefecture.where(region_id:[1])
    @pre2 = Prefecture.where(region_id:[2])
    @pre3 = Prefecture.where(region_id:[3])
    @pre4 = Prefecture.where(region_id:[4])
    @pre5 = Prefecture.where(region_id:[5])
    @pre6 = Prefecture.where(region_id:[6])
    @pre7 = Prefecture.where(region_id:[7])
  end

  def index
    @prefecture = Prefecture.where(id: params[:prefecture_id])
    @preName = Prefecture.find_by(id: params[:prefecture_id])
    @souvenirs = Souvenir.where(prefecture_id: params[:prefecture_id])
    
  end

  def new
    @souvenirs = Souvenir.new
  end

  def show
    @souvenirs = Souvenir.find_by(id: params[:id])
    @prefectures = Prefecture.find_by(id: params[:prefecture_id])
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
      redirect_to sou_show_path
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
      params.require(:souvenir).permit(:name,:prefecture_id,:comment,:image_name,:user_id)
  end
end
