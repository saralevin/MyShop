class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
t.name:string
      t.timestamps
    end
  end
end
