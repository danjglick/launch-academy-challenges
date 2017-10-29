class Project < ActiveRecord::Base
	has_many :team_memberships
	has_many :users, through: :team_memberships
	has_many :tasks

	validates :name, presence: true
end