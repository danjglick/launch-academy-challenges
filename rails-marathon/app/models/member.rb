class Member < ActiveRecord::Base
	belongs_to :house
	validates :house_id, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
end