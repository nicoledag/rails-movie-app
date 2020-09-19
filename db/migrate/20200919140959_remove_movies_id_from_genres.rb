class RemoveMoviesIdFromGenres < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :movies_id, :integer
  end
end
