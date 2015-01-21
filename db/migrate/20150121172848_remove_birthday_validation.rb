class RemoveBirthdayValidation < ActiveRecord::Migration
  def change
    change_column :users, :birthday, :string, null: true
  end
end
