Rails.application.routes.draw do
  get 'purchase/index'
  get 'purchase/done'
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'items#index'

  resources :signup do
    collection do
      get 'signup'
      get 'signup2'
      get 'signup3'
      get 'signup4'
      get 'signup5'
      get 'signup6'
      get 'signup7'
    end
  end


  resources :items, only: [:index,:new,:create,:show,:destroy] do
    collection do
      get 'search'
    end
    member do
      get 'purchase'
    end
  end


  resources :users, only: [:show, :identification, :index, :new]

  resources :profiles, only: [:show]

  resources :identifications, only: [:show]

  resources :creditcards, only: [:new, :show] do
    collection do
      post 'show', to: 'creditcards#show'
      post 'pay', to: 'creditcards#pay'
      post 'delete', to: 'creditcards#delete'
    end
    member do
      post 'buy'
    end
  end

  
  
  get 'mypage',to:'mypage#index' 
  namespace :mypage do
    get 'profile'
    put 'profile_update'
    get 'card'
    get 'identification'
    get 'logout'
  end
  
end
