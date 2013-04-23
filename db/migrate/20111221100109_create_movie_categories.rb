class CreateMovieCategories < ActiveRecord::Migration
  def change
    create_table :movie_categories do |t|
      t.string :movie_id
      t.string :category_id

      t.timestamps
    end
  end
end
