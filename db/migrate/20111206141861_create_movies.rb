class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :original_name
      t.string :country_id
      t.date :release_date
      t.date :premiere_date
      t.string :movie_maker_id
      t.text :info
      t.integer :plays, :default => 0
      t.string :kind, :default => "a"
      t.string :link_trailer
      t.boolean :hot, :default => false
      t.string :length
      t.string :image_uid
      t.string :image_name
      t.string :permalink
      t.boolean :has_shown, :default => false
      t.integer :rating_total, :default => 0
      t.integer :rating_times, :default => 0
      t.float :rating_point, :default => 0.0
      t.string :id_media
      t.timestamps
    end
  end

end
