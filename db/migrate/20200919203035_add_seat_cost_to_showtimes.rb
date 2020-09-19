class AddSeatCostToShowtimes < ActiveRecord::Migration[6.0]
  def change
    add_column :showtimes, :seat_cost, :integer
  end
end
