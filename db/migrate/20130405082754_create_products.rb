class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.decimal :coupon_price
      t.text :pic_url
      t.text :click_url
      t.text :shop_click_url
      t.text :detail
      t.integer :volume

      t.timestamps
    end
  end
end
