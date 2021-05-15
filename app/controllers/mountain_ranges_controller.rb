class MountainRangesController < ApplicationController
    def index
        @ranges = MountainRange.all.order(created_at: :desc)
    end

    def show
        @range = MountainRange.find(params[:id])
        @mtn_count = Mountain.where("mountain_range_id = #{params[:id]}").count
    end

    def mountain_index
        @range = MountainRange.find(params[:id])
        @mountains = Mountain.where("mountain_range_id = #{params[:id]}" )
    end
end