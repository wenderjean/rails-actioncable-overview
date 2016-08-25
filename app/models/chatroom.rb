class Chatroom < ApplicationRecord
  extend FriendlyId

	has_many :messages, dependent: :destroy
	has_many :users, through: :messages
	validates :topic, presence: true, uniqueness: true, case_sensitive: false

  friendly_id :topic, use: :slugged
end
