class RemoveStartTimeFromShowtimes2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :showtimes, :start_time, :string
  end
end
