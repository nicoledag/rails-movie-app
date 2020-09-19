class RemoveTotalCostFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :total_cost, :decimal
  end
end
