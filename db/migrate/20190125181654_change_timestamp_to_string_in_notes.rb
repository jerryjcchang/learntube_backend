class ChangeTimestampToStringInNotes < ActiveRecord::Migration[5.2]
  def change
    change_column :notes, :timestamp, :string
  end
end
