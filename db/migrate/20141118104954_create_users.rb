class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string:country
    	t.string:firstName
    	t.string:lastName
    	t.string:streetAddress
    	t.string:city
    	t.string:state
    	t.string:zipCode
    	t.string:phoneNumber
    	t.string:email
      t.timestamps
    end
  end
end
