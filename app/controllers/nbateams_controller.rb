class NbateamsController < ApplicationController
  def index
    @nbateams = Nbateam.all    
  end 
  
  def show
    @nbateam = Nbateam.find(params[:id])
  end
end