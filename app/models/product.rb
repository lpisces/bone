class Product < ActiveRecord::Base
  attr_accessible :click_url, :coupon_price, :pic_url, :price, :shop_click_url, :title, :volume, :categories, :category_ids, :json, :imgs
  has_and_belongs_to_many :categories
end
