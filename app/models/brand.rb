require 'carrierwave/orm/activerecord'
class Brand < ActiveRecord::Base
  attr_accessible :description, :logo, :name, :summary, :logo_cache

  mount_uploader :logo, LogoUploader
end
