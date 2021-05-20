class Player < ApplicationRecord
  belongs_to :nbateam  

  def self.injured
    where("injured = true")
  end
end