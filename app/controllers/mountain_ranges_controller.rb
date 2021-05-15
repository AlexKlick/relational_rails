class MountainRangesController < ApplicationController
    def index
        @ranges = MountainRange.all
    end

    def show
        @range = MountainRange.find(params[:id])
    end

    def mountain_index
        @range = MountainRange.find(params[:id])
        @mountains = Mountain.where("mountain_range_id = #{params[:id]}" )
    end
end