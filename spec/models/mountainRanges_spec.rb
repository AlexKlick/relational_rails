require 'rails_helper'

RSpec.describe MountainRange do
    it {should have_many :mountains}
end