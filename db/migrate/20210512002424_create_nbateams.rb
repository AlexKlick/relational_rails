class CreateNbateams < ActiveRecord::Migration[5.2]
  def change
    create_table :nbateams do |t|
      t.string :name
      t.string :city
      t.integer :number_of_players
      t.boolean :playoff_ready

      t.timestamps 
    end
  end
end
