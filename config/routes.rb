Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/contact'

  get 'sessions/new'
  
  get '/buy', to: 'books#buy'

  root 'static_pages#home'
  
  get  'static_pages/home'
  get  'static_pages/catalog'
  get  'static_pages/contact'

  #get 'search', to: 'application#search'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :books
  resources :shelves
  resources :publishers
  resources :authors
  resources :categories
  resources :users
end
