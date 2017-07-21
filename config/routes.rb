Rails.application.routes.draw do
  get '/rooms/:from_room_id/paths/new', to: 'paths#new', as: 'new_path_from'
  post '/rooms/:from_room_id/paths/new', to: 'paths#create'
  get '/rooms/:from_room_id/paths/:id', to: 'paths#edit', as: 'edit_path'
  resources :paths, only: [:update, :destroy]

  resources :games do
    resources :rooms, except: [:update, :destroy, :edit, :show]
  end

  get '/rooms/:id', to: 'play#room', as: 'rooms_show'

  resources :rooms, only: [:update, :destroy, :edit]

  devise_for :users

  get ':id', to: 'play#room', as: 'play'

  root 'play#index'
end
