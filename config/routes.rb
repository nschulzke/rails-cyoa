Rails.application.routes.draw do
  devise_for :users
  resources :paths
  get 'paths/new/:from_room_id', to: 'paths#new', as: 'new_path_from'
  
  resources :rooms

  root 'game#index'
  get ':id', to: 'game#room', as: 'game'
end
