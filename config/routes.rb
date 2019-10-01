Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#welcome'
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  #get '/logout', to: 'sessions#destroy', as: :logout
  #post '/login', to: 'sessions#authenticate'
  resources :users, only: [:new, :create, :show]
end
