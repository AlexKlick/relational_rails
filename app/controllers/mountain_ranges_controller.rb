class MountainRangesController < ApplicationController
    def index
        @ranges = MountainRange.all
    end

    def show
        #binding.pry
        @range = MountainRange.find(params[:id])
    end
end