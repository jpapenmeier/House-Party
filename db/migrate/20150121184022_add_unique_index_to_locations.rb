class AddUniqueIndexToLocations < ActiveRecord::Migration
  def change
    add_index :locations, [:name, :area_code], unique: true
  end
end
