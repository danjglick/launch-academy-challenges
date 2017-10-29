class CreateSongs < ActiveRecord::Migration[5.1]
  def change
  	create_table :songs do |t|
  		t.string :name, null: false
  		t.string :album, nul: false
  		t.string :artist, null: false
  	end
  end
end
