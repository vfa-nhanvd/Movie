class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.string :kind
      t.string :country_id
      t.boolean :hot, :default => false
      t.string :avatar_uid
      t.string :avatar_name
      t.string :permalink

      t.timestamps
    end
  end
end
