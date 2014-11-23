class CreateCartItems < ActiveRecord::Migration
  def change
     create_table :cart_items do |t|
    	 t.references :cart  ,null: false, index: true
    	 t.references :product,  null: false, index: true
    	 t.integer :quantity,  default: 1, null: false
         t.timestamps
    end
  end
end
