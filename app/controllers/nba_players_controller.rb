class NbaPlayersController < ApplicationController
  def index
    @nbateam = Nbateam.find(params[:nba_id])  
    @players = @nbateam.players  
  end    
end