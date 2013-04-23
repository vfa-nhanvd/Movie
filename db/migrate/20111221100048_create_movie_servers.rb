class CreateMovieServers < ActiveRecord::Migration
  def change
    create_table :movie_servers do |t|
      t.string :movie_id
      t.string :server_id

      t.timestamps
    end
  end
end
