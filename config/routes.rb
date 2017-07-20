Rails.application.routes.draw do
  resources :games
  devise_for :users
  resources :paths
  get 'paths/new/:from_room_id', to: 'paths#new', as: 'new_path_from'
  
  resources :rooms

  root 'play#index'
  get ':id', to: 'play#room', as: 'play'
end
