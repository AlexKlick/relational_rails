class AddNbateamToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_reference :players, :nbateam, foreign_key: true
  end
end
