Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'
  # root 'items#index'
  resources :items, only: [:index,:new,:create,:show]
  resources :users, only: [:show, :identification, :index]
  resources :profiles, only: [:show]
  resources :identifications, only: [:show]
  resources :creditcards, only: [:show]

end
