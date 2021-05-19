class PlayersController < ApplicationController
  def index
    @players = Player.all    
  end    

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    player = Player.find(params[:id])
    player.update!(player_params)
    redirect_to player_show_path(player)
  end

  def destroy
    player = Player.find(params[:id])    
    player.destroy
    redirect_to players_path
  end

  private
  def player_params
    params.permit(:name, :position, :age, :height, :injured)
  end 
end