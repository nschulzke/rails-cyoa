json.extract! game, :id, :title, :first_room_id, :user_id, :created_at, :updated_at
json.url game_url(game, format: :json)
