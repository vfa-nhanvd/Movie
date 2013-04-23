class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :episode_id
      t.string :kind
      t.string :date

      t.timestamps
    end
  end
end
