class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |table|
    	table.string :mid, null: false
      table.string :name, null: false
      table.string :description, null: false
      table.string :location, null: false
      table.string :creator, null: false
      table.timestamps null: false
    end
    add_index :meetups, [:mid, :creator], unique: true
  end
end

