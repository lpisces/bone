class ChangeProduct < ActiveRecord::Migration
  def change
    add_column :products, :imgs, :text
    add_column :products, :coupon_start_time, :datetime
    add_column :products, :coupon_end_time, :datetime
    rename_column :products, :detail, :json
  end

end
