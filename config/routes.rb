Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/', to: 'hello#index'
  root 'hello#index' 
  #D
  # get '/nbateams',     to: 'nbateams#index'
  # get '/nbateams/:id', to: "nbateams#show"
  resources :nbateams, only: [:index,:show, :new, :create] 
  get '/players/',     to: 'players#index'
  get '/players/:id',     to: 'players#show'
  get '/nbateams/:nba_id/players', to: 'nba_players#index' 
  





  
  #A
end
