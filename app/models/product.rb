class Product < ActiveRecord::Base
  attr_accessible :click_url, :coupon_price, :detail, :pic_url, :price, :shop_click_url, :title, :volume
end
