class ChangeCategoryParentIdDefaultValue < ActiveRecord::Migration
  def up
    change_column :categories, :parent_id, :integer, :default => 0
  end

  def down
    change_column :categories, :parent_id, :integer
  end
end
