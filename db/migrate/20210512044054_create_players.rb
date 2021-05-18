class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :age
      t.float :height
      t.boolean :injured

      t.timestamps
    end
  end
end
