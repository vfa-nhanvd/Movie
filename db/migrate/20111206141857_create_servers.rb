class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :permalink

      t.timestamps
    end
    Server.create(:name => "Youtube")
  end
end
