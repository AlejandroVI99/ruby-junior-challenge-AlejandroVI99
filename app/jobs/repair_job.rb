class RepairJob < ApplicationJob
  queue_as :critical

  def perform(product)
    if product.repair_status == 'pending'
      product.change_store
    end
  end
end
