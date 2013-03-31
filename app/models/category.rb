class Category < ActiveRecord::Base
  attr_accessible :is_parent, :name, :parent_id
end
