# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130405164823) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "summary"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "keywords"
    t.string   "alias"
  end

  create_table "brands_categories", :force => true do |t|
    t.string "brand_id"
    t.string "category_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id",  :default => 0
    t.boolean  "is_parent"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "group"
  end

  create_table "categories_products", :force => true do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  create_table "kindeditor_assets", :force => true do |t|
    t.string   "asset"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.decimal  "price"
    t.decimal  "coupon_price"
    t.text     "pic_url"
    t.text     "click_url"
    t.text     "shop_click_url"
    t.text     "json"
    t.integer  "volume"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.text     "imgs"
    t.datetime "coupon_start_time"
    t.datetime "coupon_end_time"
    t.integer  "sort",              :default => 0
  end

  create_table "settings", :force => true do |t|
    t.string   "var",                      :null => false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "settings", ["thing_type", "thing_id", "var"], :name => "index_settings_on_thing_type_and_thing_id_and_var", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "is_admin"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "remember_token"
  end

end
