class AddFranchiseToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :franchise, :string
    add_index :users, :franchise
  end
end
