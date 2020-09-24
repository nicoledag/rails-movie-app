class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :credit_card_number, :integer, limit: 8
  end
end
