class CreateProducts < ActiveRecord::Migration
  def change
     create_table :products do |t|
    	t.string :code      
	    t.string :description 
	    t.integer :price  
	    t.string :thumbnail        
      	t.timestamps
    end
  end

  def self.up
    Products.create(:code => "Hello", :description => "Admin", :price => 10, :thumbnail => "LongSleeveShirtsTwoPack.png");
  end
end
