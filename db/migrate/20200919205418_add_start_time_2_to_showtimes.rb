class AddStartTime2ToShowtimes < ActiveRecord::Migration[6.0]
  def change
    add_column :showtimes, :start_time, :string
  end
end
