
class CreateProducts < ActiveRecord::Migration
	def change
		create_table :products do |t|
		t.string :code
		t.string :description
		t.integer :price
		t.string :thumbnail
		t.timestamps
		end
	end
end