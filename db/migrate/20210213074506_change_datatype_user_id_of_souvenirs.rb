class ChangeDatatypeUserIdOfSouvenirs < ActiveRecord::Migration[5.1]
  def change
    change_column :souvenirs, :user_id, :integer
  end
end
