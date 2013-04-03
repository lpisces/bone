class AddKeywordsToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :keywords, :string
  end
end
