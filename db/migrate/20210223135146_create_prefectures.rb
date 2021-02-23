class CreatePrefectures < ActiveRecord::Migration[5.1]
  def change
    create_table :prefectures do |t|
      t.integer :user_id
      t.integer :souvenir_id

      t.timestamps
    end
  end
end
