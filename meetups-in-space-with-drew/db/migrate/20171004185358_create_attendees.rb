class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |table|
    	table.string :aid, null: false
      table.string :username, null: false
      table.timestamps null: false
    end
    add_index :meetups, [:mid, :creator], unique: true
  end
end
