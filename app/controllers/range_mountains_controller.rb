class RangeMountainsController < ApplicationController
    def index
        @range = MountainRange.find(params[:mountain_range_id])
        @mountains = @range.mountains
    end
end