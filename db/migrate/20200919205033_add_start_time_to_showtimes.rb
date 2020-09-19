class AddStartTimeToShowtimes < ActiveRecord::Migration[6.0]
  def change
    add_column :showtimes, :start_times, :string
  end
end
