
class CreateProducts < ActiveRecord::Migration
	def change
		create_table :productsvalues do |t|
		t.string :code
		t.string :description
		t.integer :price
		t.string :thumbnail
		t.timestamps
		end
	end
end