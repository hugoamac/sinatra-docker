class CreateProducts < ActiveRecord::Migration[5.2]
  def up
  	create_table :products do |t|
  		t.string :name
  		t.float :price
  		t.text :description
  	end
  end

  def down
  	drop_table :products
  end
end
