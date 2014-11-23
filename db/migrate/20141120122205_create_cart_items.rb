class CreateCartItems < ActiveRecord::Migration
  def change
     create_table :cart_items do |t|
    	 t.references :carts
    	 t.references :products
    	 #צריך להוסיף שדהה כמות
         t.timestamps
    end
  end
end
