Rails.application.routes.draw do
  devise_for :users
  root to: "works#index"
  resources :directors
  resources :works
  resources :users, only: [:edit, :update, :show]
end
