Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]

   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'index', to: 'sessions#index'
   get 'authorized', to: 'sessions#page_requires_login'
   resources :posts

end
