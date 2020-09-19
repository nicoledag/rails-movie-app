class AddStartTimeToShowtimes2 < ActiveRecord::Migration[6.0]
  def change
    add_column :showtimes, :start_time, :time
  end
end
