class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :messages
  has_many :chatrooms, through: :messages
  validates :username, presence: true, uniqueness: true
end
