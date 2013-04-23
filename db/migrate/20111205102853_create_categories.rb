class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :permalink
      t.boolean :hot, :default => false
      t.timestamps
    end
  end
end
