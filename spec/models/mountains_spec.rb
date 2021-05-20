require 'rails_helper'

RSpec.describe Mountain do  
  describe "relationships" do
    it {should belong_to :mountain_range}
  end
    
end