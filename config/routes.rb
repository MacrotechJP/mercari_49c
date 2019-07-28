Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'items#index'
  resources :items, only: [:index,:show]
  resources :users, only: [:show, :identification]
  resources :profiles, only: [:show]
  resources :identifications, only: [:show]
end
