class AddCostToAuditoria < ActiveRecord::Migration[6.0]
  def change
    add_column :auditoria, :cost, :integer
  end
end
