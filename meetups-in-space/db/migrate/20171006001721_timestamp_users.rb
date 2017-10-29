class TimestampUsers < ActiveRecord::Migration
  def change
  	add_column :users, :created_at, :timestamp 
  end
end
