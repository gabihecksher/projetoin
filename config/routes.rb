Rails.application.routes.draw do
  resources :books
  resources :shelves
  resources :publishers
  resources :authors
  resources :categories
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end