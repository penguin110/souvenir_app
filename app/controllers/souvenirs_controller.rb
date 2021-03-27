require "net/http"
class SouvenirsController < ApplicationController
  def top

  end

  def index
    @souvenirs = Souvenir.where(prefecture_id: params[:prefecture_id])
    prefecture = @souvenirs.name
url = URI.encode("https://ja.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=" + prefecture)
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
response.code # status code
@wiki = response.body.gsub(/\\u([\da-fA-F]{4})/) { [$1].pack('H*').unpack('n*').pack('U*') } # response body
  end

  def new
    @souvenirs = Souvenir.new
  end

  def show
    @souvenirs = Souvenir.find_by(id: params[:id])
    # @prefectures = Prefecture.find_by(id: params[:prefecture_id])
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
