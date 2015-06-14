class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
        t.references :product, index: true, foreign_key: true
      t.timestamps
    end
  end
end
