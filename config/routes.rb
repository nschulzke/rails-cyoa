Rails.application.routes.draw do
  get '/rooms/:from_room_id/paths/new', to: 'paths#new', as: 'new_path_from'
  post '/rooms/:from_room_id/paths/new', to: 'paths#create'
  get '/rooms/:from_room_id/paths/:id', to: 'paths#edit', as: 'edit_path'
  resources :paths, only: [:update, :destroy]

  resources :games, except: [:index, :show, :create] do
    resources :rooms, except: [:update, :destroy, :edit, :show]
    collection do
    end
  end
  get '/games', to: 'play#user_games', as: 'games'
  post '/games', to: 'games#create'

  get '/rooms/:id', to: 'play#room', as: 'rooms_show'

  resources :rooms, only: [:update, :destroy, :edit]

  devise_for :users

  get '/:username', to: 'play#user_games', as: 'user_games'
  get '/:username/:id', to: 'play#room', as: 'user_room'

  root 'play#index'
end
