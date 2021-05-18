Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/', to: 'hello#index'
  root 'hello#index' 
  #D
  # get '/nbateams',     to: 'nbateams#index'
  # get '/nbateams/:id', to: "nbateams#show" 
  # post '/nbateams',    to: 'nbateams#create'  
  resources :nbateams, only: [:index, :show, :new, :create, :edit] 
  get '/players/',                 to: 'players#index'
  get '/players/:id',              to: 'players#show'
  get '/nbateams/:nba_id/players', to: 'nba_players#index' 
  patch '/nbateams/:nba_id',       to: 'nbateams#update' 
  




  
  #A
end
