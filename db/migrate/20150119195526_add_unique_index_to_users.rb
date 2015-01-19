class AddUniqueIndexToUsers < ActiveRecord::Migration
  def change
    add_index :users, [:uid, :link], unique: true
  end
end
