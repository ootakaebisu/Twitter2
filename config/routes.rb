Rails.application.routes.draw do
 
  root "home#show"

  devise_for :users
  resources :users, only: [:edit, :update, :show]
  resources :tweets, only: [:index,:create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
