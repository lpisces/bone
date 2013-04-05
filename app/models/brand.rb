# encoding : utf-8
require 'carrierwave/orm/activerecord'
class Brand < ActiveRecord::Base
  include CarrierWave::MiniMagick

  attr_accessible :description, :logo, :name, :summary, :logo_cache, :categories, :category_ids, :alias, :keywords

  mount_uploader :logo, LogoUploader

  has_and_belongs_to_many :categories

  validates :name, :uniqueness => {:message => '品牌已经存在'}, :presence => { :message => '请填写用户名'}, :length => {:to_long => "品牌名称不能超过%{count}个字符", :maximum => 64,  :minimum   => 1, :too_short => "品牌名称太短了喔"}
end
