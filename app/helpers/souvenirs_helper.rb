module SouvenirsHelper
    def prefecture_view
        @prefectures = Prefecture.all
        @prefecture = Prefecture.find_by(id: params[:prefecture_id])
        
    end
end
