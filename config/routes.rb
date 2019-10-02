Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#welcome'
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout
  get '/find_a_friend', to: 'users#find_a_friend', as: :find_a_friend
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :buddies, only: [:show, :index]
end
