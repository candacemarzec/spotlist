class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :coupon_url
      t.string :image_url
      t.datetime :need_by_date

      t.timestamps
    end
  end
end
