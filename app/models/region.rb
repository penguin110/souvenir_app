class Region < ActiveHash::Base
    include ActiveHash::Associations

    has_many :prefecurures

    self.data = [
        {id: 1, name: '北海道・東北地方'}, {id: 2, name: '関東地方'}, {id: 3, name: '中部地方'},
        {id: 4, name: '近畿地方'}, {id: 5, name: '中国地方'}, {id: 6, name: '四国地方'},
        {id: 7, name: '九州地方'}
    ]

  end