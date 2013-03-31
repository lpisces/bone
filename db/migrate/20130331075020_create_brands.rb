class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :logo
      t.text :summary
      t.text :description

      t.timestamps
    end
  end
end
