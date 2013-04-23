class CreateMovieDirectors < ActiveRecord::Migration
  def change
    create_table :movie_directors do |t|
      t.string :movie_id
      t.string :director_id

      t.timestamps
    end
  end
end
