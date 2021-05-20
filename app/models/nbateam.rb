class Nbateam < ApplicationRecord 
#     validates_presence_of :name, :city, :number_of_players, :playoff_ready
    has_many :players, dependent: :delete_all
end