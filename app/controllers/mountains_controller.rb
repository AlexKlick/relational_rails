class MountainsController < ApplicationController

  def index
      @mountains = Mountain.where(skiable: true)
  end

  def create
      Mountain.create(name: params[:Mountain_name], height_m: params[:height_m], skiable: params[:skiable])
      redirect_to '/mountains'
  end

  def show
      @mountain = Mountain.find(params[:id])
  end

  def delete
    Mountain.destroy(params[:id])
    redirect_to "/mountains"
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end

  def update
    mountain = Mountain.find(params[:id])
    mountain.update(name: params[:mountain_name], height_m: params[:height_m], skiable: params[:skiable])
    redirect_to "/mountains"
  end
end
