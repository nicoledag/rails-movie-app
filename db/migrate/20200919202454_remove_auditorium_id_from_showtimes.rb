class RemoveAuditoriumIdFromShowtimes < ActiveRecord::Migration[6.0]
  def change
    remove_column :showtimes, :auditorium_id, :integer
  end
end
