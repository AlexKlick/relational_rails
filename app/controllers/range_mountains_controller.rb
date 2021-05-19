class RangeMountainsController < ApplicationController

    def index
        @range = MountainRange.find(params[:mountain_range_id])
        @mountains = @range.mountains
    end

    def new
        @range = MountainRange.find(params[:mountain_range_id])
    end

    def create
        @range = MountainRange.find(params[:mountain_range_id])
        if params[:skiable] == nil 
            redirect_to "/mountain_ranges/#{@range.id}/mountains/new", notice: "please select a value for skiable"
        else
            Mountain.create(name: params[:name], height_m: params[:height_m], skiable: params[:skiable], mountain_range_id: @range.id)
            redirect_to "/mountain_ranges/#{@range.id}/mountains"
        end
    end

    def edit
        @range = MountainRange.find(params[:mountain_range_id])
        @mountain = Mountain.find(params[:mountain_id])
    end

    def update
        mountain = Mountain.find(params[:mountain_id])
        mountain.update(name: params[:mountain_name], height_m: params[:height_m], skiable: params[:skiable])
        redirect_to "/mountain_ranges/#{params[:mountain_range_id]}/mountains"
    end
end