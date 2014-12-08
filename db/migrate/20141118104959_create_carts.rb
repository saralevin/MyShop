class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
    	   t.integer:userId 
      	t.string:productCode
      	t.integer:quantity
      	t.integer:totalSum
      	t.timestamps
        
    end
  end
end
