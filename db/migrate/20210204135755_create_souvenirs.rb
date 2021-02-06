class CreateSouvenirs < ActiveRecord::Migration[5.1]
  def change
    create_table :souvenirs do |t|
      t.string :name
      t.string :prefectures
      t.text :comment
      t.string :image_name
      t.string :user_id

      t.timestamps
    end
  end
end
