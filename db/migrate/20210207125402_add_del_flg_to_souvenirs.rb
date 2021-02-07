class AddDelFlgToSouvenirs < ActiveRecord::Migration[5.1]
  def change
    add_column :souvenirs, :del_flg, :integer
  end
end
