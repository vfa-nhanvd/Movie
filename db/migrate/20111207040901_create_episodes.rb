class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name
      t.string :server_id
      t.string :movie_id
      t.string :link
      t.string :permalink
      t.string :id_media

      t.timestamps
    end
  end
end
