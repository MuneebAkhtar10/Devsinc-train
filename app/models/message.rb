class Message < ApplicationRecord
	belongs_to :newsfeed
	belongs_to :user
end