class CreateHomeLocations < ActiveRecord::Migration
  def change
    create_table :home_locations do |t|
      t.integer :home_id, null: false
      t.integer :location_id, null: false
    end
  end
end
