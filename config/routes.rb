Rails.application.routes.draw do
  root 'homepage#index'
  
  resources :users
  
  get '/homepage/new', to: 'homepage#new'
  get '/user/:id', to: 'homepage#show'

    # get 'homepage/index'
  # get "/homepage/:id", to: 'homepage#show'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
