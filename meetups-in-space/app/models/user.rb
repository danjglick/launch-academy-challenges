class User < ActiveRecord::Base
	has_many :attendees
	has_many :meetups, through: :attendees

	validates :first_name, presence: true
	validates :last_name, presence: true
end