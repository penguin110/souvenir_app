class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :souvenir_id
      t.integer :user_id

      t.timestamps
    end
  end
end
