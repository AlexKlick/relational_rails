class MountainRange < ApplicationRecord
    has_many :mountains, dependent: :delete_all
end