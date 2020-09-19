class CreateAuditoria < ActiveRecord::Migration[6.0]
  def change
    create_table :auditoria do |t|
      t.integer :seats_available
      t.integer :seats_costs

      t.timestamps
    end
  end
end
