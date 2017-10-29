class User < ActiveRecord::Base
	has_many :team_memberships
	has_many :projects, through: :team_memberships
	has_many :tasks

	validates :first_name, presence: true
	validates :last_name, presence: true
end