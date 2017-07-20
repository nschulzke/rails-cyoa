class Game < ApplicationRecord
  belongs_to :first_room, class_name: 'Room'
  belongs_to :user
  has_many :rooms

  accepts_nested_attributes_for :first_room
end
