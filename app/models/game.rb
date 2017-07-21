class Game < ApplicationRecord
  include UserOwnershipConcern

  belongs_to :first_room, class_name: 'Room'
  belongs_to :user
  has_many :rooms
  has_many :paths

  accepts_nested_attributes_for :first_room
end
