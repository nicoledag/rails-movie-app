class RemoveSeatsCostsFromAuditoria < ActiveRecord::Migration[6.0]
  def change
    remove_column :auditoria, :seats_costs, :integer
  end
end
