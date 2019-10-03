Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#welcome'
  resources :users, only: [:new, :create, :show, :edit, :update]
  get '/find_a_friend', to: 'users#find_a_friend', as: :find_a_friend
  get 'leave_friendship', to: 'users#end_friendship', as: :end_friendship

  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout


  resources :buddies, only: [:show, :index]

  get '/activities/index', to: 'activities#index', as: :adventures

  get '/hangouts', to: 'hangouts#show'

end
