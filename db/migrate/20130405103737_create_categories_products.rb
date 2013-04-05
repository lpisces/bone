class CreateCategoriesProducts < ActiveRecord::Migration
  def up
    create_table :categories_products do |t|
      t.integer :category_id
      t.integer :product_id
    end
  end

  def down
    drop_table :categories_products
  end
end
