class CreateProjectTasks < ActiveRecord::Migration
  def change
  	create_table :project_tasks do |t|
	  	t.belongs_to :user
	  	t.string :name, null: false
	  	t.text :description
	  	t.string :due_date

	  	t.timestamp
	  end
  end
end
