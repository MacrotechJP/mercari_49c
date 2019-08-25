Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'items#index'
  resources :users do
    member do
      get 'signup'
      get 'signup2'
      get 'signup3'
      get 'signup4'
      get 'signup5'
      get 'signup6'
      get 'login'
    end
  end
  resources :items, only: [:index,:new,:create,:show,:destroy] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :identification, :index, :new]
  resources :profiles, only: [:show]
  resources :identifications, only: [:show]
  resources :creditcards, only: [:show]

  
  get 'mypage',to:'mypage#index' 
  namespace :mypage do
    get 'profile'
    put 'profile_update'
    get 'card'
    get 'identification'
    get 'logout'
  end
  
end
