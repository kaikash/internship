class AddUsernameToUser < ActiveRecord::Migration[5.0]
  def self.up
    add_column :users, :username, :string, unique: true
  end

  def self.down
    add_column :users, :username
  end
end
