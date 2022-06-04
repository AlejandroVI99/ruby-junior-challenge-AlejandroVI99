class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :repair_price
      t.string :repair_status
      t.integer :client_id
      t.integer :store_id
      
      t.timestamps
    end
  end
end
