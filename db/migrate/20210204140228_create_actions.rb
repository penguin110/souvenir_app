class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.text :comment
      t.integer :user_id
      t.integer :souvenir_id
      t.integer :good

      t.timestamps
    end
  end
end
