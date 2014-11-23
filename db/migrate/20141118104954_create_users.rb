class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name 
      t.string :address1 
      t.string :address2 
      t.string :city 
      t.string :state 
      t.string :country 
      t.integer :zip 
      t.string :phone 
      t.string :email 
      t.timestamps
    end
  end
end
