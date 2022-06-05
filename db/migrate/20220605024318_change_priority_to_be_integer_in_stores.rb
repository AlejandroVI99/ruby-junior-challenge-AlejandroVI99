class ChangePriorityToBeIntegerInStores < ActiveRecord::Migration[7.0]
  def change
    change_column :stores, :priority, :integer, using: 'priority::integer'
  end
end
