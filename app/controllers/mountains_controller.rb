class MountainsController < ApplicationController
    def index
        @ranges = MountainRange.all
    end
end