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
    redirect_to nba_players_path(nbateam)   
  end

  def edit
    @nbateam = Nbateam.find(params[:nba_id])    
    @players = Player.find(params[:player_id])
  end

  # def update
  #   @nbateam = Nbateam.find(params[:nba_id])
  #   @players = Player.find(params[:player_id])   
  #   @players.update(player_params)
  #   redirect_to "/nbateams/#{@}"
  # end
  
  private
  def player_params
    params.permit(:name, :position, :age, :height, :injured)
  end 
end