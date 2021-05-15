Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'hello#index'

  #D
  get '/nbateams',     to: 'nbateams#index'
  get '/nbateams/:id', to: "nbateams#show"
  get '/players/',     to: 'players#index'
  get '/players/',     to: 'players#show'







  
  #A
  get '/mountain_ranges', to: 'mountain_ranges#index'
  get "/mountain_ranges/:id", to: 'mountain_ranges#show'
  get "/mountain_ranges/:id/mountains", to: 'mountain_ranges#mountain_index'

  get '/mountains', to: 'mountains#index'
  get '/mountains/:id', to: 'mountains#show'
end
