class User < ApplicationRecord
  petergate(roles: [:admin], multiple: false)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username

  validates :username, format: { with:    /\A[a-z0-9A-Z]*\z/,
                                 message: "must contain only letters and numbers" }

  has_many :games
  has_many :rooms, through: :games
  has_many :paths, through: :games
end
