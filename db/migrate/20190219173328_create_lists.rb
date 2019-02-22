class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :store_name
      t.text :notes
      t.integer :household_id
      t.integer :user_id

      t.timestamps
    end
  end
end
