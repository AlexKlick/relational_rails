Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'hello#index'

  #D
  get '/nbateams',     to: 'nbateams#index'
  get '/nbateams/:id', to: "nbateams#show"
  get '/players/',     to: 'players#index'
  get '/players/',     to: 'players#show'







  
  #A
  get '/ranges', to: 'ranges#index'
  get "/ranges/:id", to: 'ranges#show'

  get '/mountains', to: 'mountains#index'
  get '/mountains/:id', to: 'mountains#show'
end
