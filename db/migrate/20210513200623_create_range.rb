class CreateRange < ActiveRecord::Migration[5.2]
  def change
    create_table :mountain_ranges do |t|
      t.string :name
      t.integer :length_km
      t.boolean :western_hemisphere

      t.timestamps
      
    end
  end
end
