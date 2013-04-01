require 'carrierwave/orm/activerecord'
class Brand < ActiveRecord::Base
  include CarrierWave::MiniMagick
  attr_accessible :description, :logo, :name, :summary, :logo_cache

  mount_uploader :logo, LogoUploader
end
