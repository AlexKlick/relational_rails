class NbateamsController < ApplicationController
  def index
    @nbateams = Nbateam.all.order(created_at: :desc)    
  end 
  
  def show
    @nbateam = Nbateam.find(params[:id])
  end 
  
  def new
  end

  def create 
    nbateam = Nbateam.create!(nbateam_params)
    redirect_to "/nbateams"
  end 
  
  def edit 
    @nbateam = Nbateam.find(params[:id])  
  end 

  def update
    nbateam = Nbateam.find(params[:nba_id])
    nbateam.update(nbateam_params)
    redirect_to "/nbateams"
  end

  def destroy
    Nbateam.destroy(params[:id])
    redirect_to nbateams_path    
  end
  
  private
  def nbateam_params
    params.permit(:name, :city, :number_of_players, :playoff_ready)
  end 
end