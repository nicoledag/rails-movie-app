class CreateShowtimes < ActiveRecord::Migration[6.0]
  def change
    create_table :showtimes do |t|
      t.integer :movie_id
      t.date :date
      t.time :start_time
      t.integer :seats_available
      t.integer :seat_cost

      t.timestamps
    end
  end
end
