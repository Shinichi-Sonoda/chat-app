Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
  resources :users, unly: [:edit, :update]
  resources :rooms, unly: [:new, :create]
end
