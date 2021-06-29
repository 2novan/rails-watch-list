class RenameMovies < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookmarks, :movies_id, :movie_id
  end
end
