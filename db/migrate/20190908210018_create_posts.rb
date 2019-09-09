class CreatePosts < ActiveRecord::Migration[5.2]
  def up
  	create_table :posts do |t|
  		t.string :title
  		t.float :resume
  		t.text :description
  	end
  end

  def down
  	drop_table :posts
  end
end
