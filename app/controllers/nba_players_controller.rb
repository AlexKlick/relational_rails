class NbaPlayersController < ApplicationController
  def index
    @nbateam = Nbateam.find(params[:nba_id])  
    @players = @nbateam.players  
  end  
  
  def new
    @nbateam = Nbateam.find(params[:nba_id])  
  end

  def create
    nbateam = Nbateam.find(params[:nba_id])
    @player = nbateam.players.create(player_params)
    redirect_to "/nbateams/#{@player.nbateam_id}/players"  
  end
  
  private
  def player_params
    params.permit(:name, :position, :age, :height, :injured)
  end 
end