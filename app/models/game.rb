class Game < ApplicationRecord
  belongs_to :first_room
  belongs_to :user
end
