Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :quiz, only: [:index, :show, :new, :create, :update, :edit, :destroy]

end
