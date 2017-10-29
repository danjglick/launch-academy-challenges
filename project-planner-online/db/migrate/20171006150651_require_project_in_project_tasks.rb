class RequireProjectInProjectTasks < ActiveRecord::Migration
  def up
  	remove_column :project_tasks, :project_id
  	add_column :project_tasks, :project_id, :integer, null: false
  end

  def down
  	remove_column :project_tasks, :project_id
  	add_column :project_tasks, :project_id, :integer, null: false
  end
end
