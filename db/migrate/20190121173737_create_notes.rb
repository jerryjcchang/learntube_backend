class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :timestamp
      t.text :content
      t.integer :video_id

      t.timestamps
    end
  end
end
