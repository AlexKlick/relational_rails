class AddPicToMountains < ActiveRecord::Migration[5.2]
  def change
    add_column :mountains, :pic, :string
  end
end
