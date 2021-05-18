require 'rails_helper'

RSpec.describe Mountain do
    it {should belong_to :mountain_range}
end