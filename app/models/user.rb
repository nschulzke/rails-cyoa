class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username

  validates :username, format: { with:    /\A[a-z0-9A-Z]*\z/,
                                 message: "must contain only letters and numbers" }
end
