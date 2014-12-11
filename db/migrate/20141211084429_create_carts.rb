class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :userId

      t.timestamps
    end
  end
end
