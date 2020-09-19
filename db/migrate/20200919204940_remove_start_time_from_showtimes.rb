class RemoveStartTimeFromShowtimes < ActiveRecord::Migration[6.0]
  def change
    remove_column :showtimes, :start_time, :time
  end
end
