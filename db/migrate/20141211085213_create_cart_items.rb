class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :cartId
      t.string :productCode
      t.string :quantity
      t.string :integer
      t.string :totalSum
      t.string :integer

      t.timestamps
    end
  end
end
