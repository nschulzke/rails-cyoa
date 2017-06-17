class Room < ApplicationRecord
  has_many :paths_in, class_name: "Path", foreign_key: "to_room_id"
  has_many :paths_out, class_name: "Path", foreign_key: "from_room_id"
end
