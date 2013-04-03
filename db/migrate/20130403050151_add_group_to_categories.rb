class AddGroupToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :group, :string
  end
end
