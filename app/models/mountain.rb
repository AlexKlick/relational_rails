class Mountain < ApplicationRecord
    belongs_to :mountain_range
    validates_presence_of :name, :height_m, :skiable
end