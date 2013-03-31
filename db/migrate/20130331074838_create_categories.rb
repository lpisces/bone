class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id
      t.boolean :is_parent

      t.timestamps
    end
  end
end
