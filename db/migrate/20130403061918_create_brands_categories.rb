class CreateBrandsCategories < ActiveRecord::Migration
  def change
    create_table :brands_categories do |t|
      t.string :brand_id
      t.string :category_id
    end
  end
end
