class Category < ActiveRecord::Base
  attr_accessible :is_parent, :name, :parent_id, :group, :brands, :brand_ids

  has_and_belongs_to_many :brands

  before_save do |c|
    sub = Category.where('parent_id = ?', c.id).all
    sub.each do |s|
      s.update_attribute :group, c.group
    end
  end

  def self.top
    Category.where("parent_id = 0 AND is_parent = ?", true).all
  end
end
