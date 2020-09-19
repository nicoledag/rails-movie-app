class AddMovieIdToGenres < ActiveRecord::Migration[6.0]
  def change
    add_column :genres, :movie_id, :integer
  end
end
