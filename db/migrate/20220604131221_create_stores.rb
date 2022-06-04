class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :priority
      t.string :repair_products
      
      t.timestamps
    end
  end
end
