Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'hello#index'

  #D
  get '/nbateams',     to: 'nbateams#index'
  get '/nbateams/:id', to: "nbateams#show"
  get '/players/',     to: 'players#index'
  get '/players/',     to: 'players#show'







  
  #A
  #read ranges
  get '/mountain_ranges', to: 'mountain_ranges#index'
  #create range
  get '/mountain_ranges/new', to: 'mountain_ranges#new'
  post '/mountain_ranges', to: 'mountain_ranges#create'
  #read single range
  get "/mountain_ranges/:id", to: 'mountain_ranges#show'
  #edit a range
  get '/mountain_ranges/:id/edit', to: 'mountain_ranges#edit'
  patch '/mountain_ranges/:id', to: 'mountain_ranges#update'
  #mountains in a range
  get "/mountain_ranges/:mountain_range_id/mountains", to: 'range_mountains#index'
  #create mountain
  get '/mountains/new', to: 'mountains#new'
  post '/mountains', to: 'mountains#create'
  #read all mountains
  get '/mountains', to: 'mountains#index'
  #read single mountain
  get '/mountains/:id', to: 'mountains#show'
  #edit single mountain
  get '/mountains/:id/edit', to: 'mountains#edit'
  patch '/mountains/:id', to: 'mountains#update'
end
