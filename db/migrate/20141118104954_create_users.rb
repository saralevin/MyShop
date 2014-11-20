class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
     t.id :string, index :true
      t.first_name :string
      t.last_name :string
      t.address1 :string
      t.address2 :string
      t.city :string
      t.state :string
      t.country :int
      t.zip :string
      t.phone :string
      t.email :string
      t.timestamps
    end
  end
end
