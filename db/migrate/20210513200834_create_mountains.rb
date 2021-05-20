class CreateMountains < ActiveRecord::Migration[5.2]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :height_m
      t.boolean :skiable

      t.timestamps
      
    end
  end
end
