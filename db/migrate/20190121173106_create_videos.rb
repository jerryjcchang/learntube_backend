class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :youtube_id
      t.string :name
      t.string :description
      t.string :instructor
      t.integer :length
      t.string :category

      t.timestamps
    end
  end
end
