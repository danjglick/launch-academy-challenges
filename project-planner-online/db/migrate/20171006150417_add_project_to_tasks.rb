class AddProjectToTasks < ActiveRecord::Migration
  def change
  	add_column :project_tasks, :project_id, :integer
  end
end
