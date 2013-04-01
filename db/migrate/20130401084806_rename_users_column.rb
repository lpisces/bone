class RenameUsersColumn < ActiveRecord::Migration
  def up
    rename_column :users, :remeber_token, :remember_token
  end

  def down
    rename_column :users, :remember_token, :remeber_token
  end
end
