Rails.application.routes.draw do

  root 'sessions#welcome'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/login'

  # get 'sessions/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'

  resources :posts
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  # some pages are only accessible to users that are logged in
  # every route except /authorized will be accessible to all
  get 'authorized', to: 'sessions#page_requires_login'

end
