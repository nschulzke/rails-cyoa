json.extract! room, :id, :title, :body, :created_at, :updated_at
json.url room_url(room, format: :json)
