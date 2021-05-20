require 'rails_helper'

RSpec.describe MountainRange do
  describe "relationships" do
    it {should have_many :mountains}
  end
end