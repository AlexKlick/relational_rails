class MountainRange < ApplicationRecord
    has_many :mountains, dependent: :delete_all
    validates_presence_of :name, :length_km, :western_hemisphere
end