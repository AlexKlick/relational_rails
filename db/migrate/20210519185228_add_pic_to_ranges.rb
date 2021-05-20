class AddPicToRanges < ActiveRecord::Migration[5.2]
  def change
    add_column :mountain_ranges, :pic, :string
  end
end
