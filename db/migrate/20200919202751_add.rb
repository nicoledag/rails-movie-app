class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :showtimes, :seats_available, :integer
  end
end
