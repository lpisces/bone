require 'carrierwave/orm/activerecord'
class Brand < ActiveRecord::Base
  include CarrierWave::MiniMagick

  attr_accessible :description, :logo, :name, :summary, :logo_cache, :categories, :category_ids

  mount_uploader :logo, LogoUploader

  has_and_belongs_to_many :categories
end
