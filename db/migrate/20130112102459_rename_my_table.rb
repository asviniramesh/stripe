class RenameMyTable < ActiveRecord::Migration
  def up
	  rename_table :subscriptions, :users
  end

  def down
	  rename_table :users, :subscriptions
  end
end
