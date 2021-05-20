class MountainRangesController < ApplicationController
  
    def index
        @ranges = MountainRange.all.order(created_at: :desc)
    end

    def new
    end

    def create
        MountainRange.create(name: params[:range_name], length_km: params[:length_km], western_hemisphere: params[:western_hemisphere])
        redirect_to '/mountain_ranges'
    end
    
    def show
        @range = MountainRange.find(params[:id])
        @mtn_count = Mountain.where("mountain_range_id = #{params[:id]}").count
    end

    def edit
        @range = MountainRange.find(params[:id])
    end

    def update
        range = MountainRange.find(params[:id])
        range.update(name: params[:range_name], length_km: params[:length_km], western_hemisphere: params[:western_hemisphere])
        redirect_to "/mountain_ranges/#{params[:id]}"
    end

    def delete
        MountainRange.destroy(params[:id])
        redirect_to "/mountain_ranges"
    end
end