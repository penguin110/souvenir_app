class SouvenirsController < ApplicationController
  def index
  end

  def new
    @souvenirs= Souvenir.new
  end

  def show
  end

  def create
    @souvenirs = Souvenir.new(souvenir_params)


  end
  private
  def souvenir_params
      params.require(:souvenir).permit(:prefectures,:comment,:image_name,:user_id)
  end
end
