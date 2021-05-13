class RangesController < ApplicationController
    def index
        @ranges = MountainRange.all
    end
end