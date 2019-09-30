Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/quizzes', to: 'quizzes#show'

  root to: 'users#welcome'
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  #post '/login', to: 'sessions#authenticate'
  resources :users, only: [:create, :new, :show]
end
