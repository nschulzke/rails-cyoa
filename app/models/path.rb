class Path < ApplicationRecord
  belongs_to :from_room, class_name: "Room"
  belongs_to :to_room, class_name: "Room"
  belongs_to :game
  default_scope { order(created_at: :asc) }
end
