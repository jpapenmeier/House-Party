class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :email
      t.date :birthday, null: false
      t.string :gender, null: false
      t.string :image
      t.string :link, null: false
      t.boolean :cats, default: false
      t.boolean :dogs, default: false

      t.timestamps null: false
    end
  end
end
