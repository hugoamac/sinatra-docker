class CreateMovies < ActiveRecord::Migration[5.2]
  def up
  	create_table :movies do |t|
  		t.string :name
  		t.integer :year
  	end
  end

  def down
  	drop_table :movies
  end
end
