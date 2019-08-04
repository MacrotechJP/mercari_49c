Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'items#index'
  resources :items do
    member do
      get 'signup'
      get 'signup2'
      get 'signup3'
      get 'signup4'
      get 'signup5'
    end
  end
  resources :items, only: [:index, :new]  
end
