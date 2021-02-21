class AddPrefectureIdToSouvenirs < ActiveRecord::Migration[5.1]
  def change
    add_column :souvenirs, :prefecture_id, :integer
  end
end
