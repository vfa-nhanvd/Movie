class CreateMovieMakers < ActiveRecord::Migration
  def change
    create_table :movie_makers do |t|
      t.string :name
      t.string :permalink

      t.timestamps
    end
  end
end
