class MountainsController < ApplicationController
    def index
        @mountains = Mountain.where(skiable: true)
    end
    def create
        binding.pry
        Mountain.create(name: params[:Mountain_name], height_m: params[:height_m], skiable: params[:skiable])
        redirect_to '/mountains'
    end
    def show
        @mountain = Mountain.find(params[:id])
    end
end
