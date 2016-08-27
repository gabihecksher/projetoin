Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/contact'

  get 'sessions/new'

  root 'static_pages#home'
  
  get  'static_pages/home'
  get  'static_pages/catalog'
  get  'static_pages/contact'
  get  'static_pages/buy'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :books
  resources :shelves
  resources :publishers
  resources :authors
  resources :categories
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
