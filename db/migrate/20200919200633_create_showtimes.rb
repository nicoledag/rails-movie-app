class CreateShowtimes < ActiveRecord::Migration[6.0]
  def change
    create_table :showtimes do |t|
      t.integer :movie_id
      t.integer :auditorium_id
      t.date :date
      t.time :start_time

      t.timestamps
    end
  end
end
