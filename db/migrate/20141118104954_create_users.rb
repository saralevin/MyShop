class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name,  limit: 45, null: false
      t.string :last_name ,  limit: 45, null: false
      t.string :address1 ,  limit: 45
      t.string :address2 ,      limit: 45
      t.string :city ,      limit: 45
      t.string :state ,      limit: 45
      t.string :country ,      limit: 45
      t.integer :zip 
      t.string :phone ,      limit: 45
      t.string :email ,      limit: 45
      t.timestamps
    end
  end
end