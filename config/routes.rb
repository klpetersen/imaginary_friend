Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'users#welcome'

  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout

  resources :users, only: [:new, :create, :show, :edit, :update]
  get '/find_a_friend', to: 'users#find_a_friend', as: :find_a_friend
  get 'leave_friendship', to: 'users#end_friendship', as: :end_friendship
  
  resources :activities, only: [:index]
  get '/activities', to: 'activities#index', as: :adventures

  resources :buddies, only: [:show, :index]

  get 'lift_weights', to: 'hangouts#lift_weights'
  get 'go_run', to: 'hangouts#go_run'
  get 'yoga', to: 'hangouts#yoga'
  get 'abercrombie', to: 'hangouts#abercrombie'
  get 'hot_topic', to: 'hangouts#hot_topic'
  get 'h_and_m', to: 'hangouts#h_and_m'
  get 'cafe', to: 'hangouts#cafe'
  get 'pizza', to: 'hangouts#pizza'
  get 'mexican', to: 'hangouts#mexican'

end
