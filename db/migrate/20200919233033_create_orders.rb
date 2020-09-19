class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :showtime_id
      t.integer :user_id
      t.integer :credit_card_number
      t.date :expiration_date
      t.integer :total_seats_selected
      t.decimal :total_cost

      t.timestamps
    end
  end
end
