class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
        # t.product_id :integer             null: false
    	# t.user_id :integer               null: false
        t.references :users
        # t.references :products, index: true
       # t.string :quantity ,  default: 1, null: false
       t.timestamps
    end
  end
end
