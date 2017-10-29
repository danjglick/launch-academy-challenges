class CreateTeamMemberships < ActiveRecord::Migration
  def change
  	create_table :team_memberships do |t|
  		t.belongs_to :user
  		t.belongs_to :project

  		t.timestamp
  	end
  end
end
