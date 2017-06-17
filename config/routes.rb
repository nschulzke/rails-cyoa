Rails.application.routes.draw do
  resources :paths
  get 'paths/new/:from_room_id', to: 'paths#new', as: 'new_path_from'
  
  resources :rooms
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
