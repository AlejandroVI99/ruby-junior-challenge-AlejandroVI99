class Product < ApplicationRecord
  belongs_to :store
  belongs_to :client
  #after_create :RepairJob.set(wait: 1.minute).perform_later(self)

  def self.assign_store(product)
    stores = Store.where(priority: 1)
    store_id = []
    stores.map do |store|
      puts store.id
      puts store
      if store.priority == 1
        store_id<<(store.id) if store.repair_products.include?(product) 
      end
    end
    return store_id.flatten.sample(1)[0]
  end

  def change_store
    stores = Store.where.not(priority: 1)
    store_id =[]
    stores.each do |store|
      if store.priority != 1
        puts store.id
        store_id.push(store.id) if store.repair_products.include?(self.name) 
      end
    end
    self.store_id = store_id.flatten.sample(1)[0]
    self.save
  end
end
