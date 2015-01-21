class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name, null: false
      t.string :move_in_month, null: false
      t.text :description, null: false
      t.integer :rent_per_person, null: false
      t.integer :bedrooms, null: false
      t.boolean :cats, default: false
      t.boolean :dogs, default: false
    end
  end
end
