Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'items#index'
  
  resources :items, only: [:index,:new,:create,:show]
  resources :users, only: [:show, :identification, :index, :new]
  resources :profiles, only: [:show]
  resources :identifications, only: [:show]
  resources :creditcards, only: [:show]

end
