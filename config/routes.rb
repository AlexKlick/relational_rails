Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'hello#index'

  #D
  get '/nbateams', to: 'nbateams#index'
  get '/nbateams/:id', to: "nbateams#show"


  #A
end
