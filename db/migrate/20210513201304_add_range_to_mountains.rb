class AddRangeToMountains < ActiveRecord::Migration[5.2]
  def change
    add_reference :mountains, :mountain_range, foreign_key: true
  end
end
