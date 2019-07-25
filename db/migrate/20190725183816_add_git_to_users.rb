class AddGitToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :git_token, :string, null: true
  end
end
