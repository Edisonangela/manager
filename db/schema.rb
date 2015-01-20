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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140312163843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.integer  "user_id"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",               default: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["is_admin"], name: "index_admin_users_on_is_admin", using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",    default: 0
    t.integer  "items_count", default: 0
  end

  create_table "collections", force: true do |t|
    t.integer  "target_id"
    t.string   "target_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "collections", ["target_id", "target_type"], name: "index_collections_on_target_id_and_target_type", using: :btree
  add_index "collections", ["user_id"], name: "index_collections_on_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "target_id"
    t.string   "target_type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "rating",      default: 0
  end

  add_index "comments", ["target_id", "target_type"], name: "index_comments_on_target_id_and_target_type", using: :btree

  create_table "events", force: true do |t|
    t.integer  "shop_id"
    t.string   "title"
    t.text     "body"
    t.string   "banner"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["shop_id"], name: "index_events_on_shop_id", using: :btree

  create_table "favourites", force: true do |t|
    t.integer  "user_id"
    t.integer  "target_id"
    t.string   "target_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favourites", ["target_id", "target_type"], name: "index_favourites_on_target_id_and_target_type", using: :btree
  add_index "favourites", ["user_id"], name: "index_favourites_on_user_id", using: :btree

  create_table "item_photos", force: true do |t|
    t.integer  "item_id"
    t.string   "data"
    t.integer  "position",   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_photos", ["item_id"], name: "index_item_photos_on_item_id", using: :btree
  add_index "item_photos", ["position"], name: "index_item_photos_on_position", using: :btree

  create_table "items", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.text     "description"
    t.integer  "comments_count",                          default: 0
    t.decimal  "price",          precision: 20, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level",                                   default: 0
    t.string   "code"
    t.integer  "fans_count",                              default: 0
    t.integer  "photos_count",                            default: 0
  end

  add_index "items", ["fans_count"], name: "index_items_on_fans_count", using: :btree
  add_index "items", ["level"], name: "index_items_on_level", using: :btree

  create_table "members", force: true do |t|
    t.integer  "openid"
    t.string   "phone"
    t.integer  "orders_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "item_id"
    t.integer  "number",                              default: 1
    t.decimal  "amount",     precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["item_id"], name: "index_order_items_on_item_id", using: :btree
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.decimal  "amount",        precision: 10, scale: 2
    t.integer  "items_count",                            default: 0
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "address"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "code"
    t.datetime "delivered_at"
    t.datetime "confirmed_at"
    t.datetime "canceled_at"
    t.integer  "position"
  end

  add_index "orders", ["contact_phone"], name: "index_orders_on_contact_phone", using: :btree
  add_index "orders", ["position"], name: "index_orders_on_position", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "package_items", force: true do |t|
    t.integer  "package_id"
    t.integer  "item_id"
    t.integer  "position",   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "items_count",                          default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",       precision: 20, scale: 2, default: 0.0
  end

  create_table "photos", force: true do |t|
    t.string   "target_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data"
  end

  create_table "redactor_assets", force: true do |t|
    t.integer  "user_id"
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable", using: :btree
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type", using: :btree

  create_table "shop_photos", force: true do |t|
    t.integer  "shop_id"
    t.string   "data"
    t.integer  "position",   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shop_photos", ["position"], name: "index_shop_photos_on_position", using: :btree
  add_index "shop_photos", ["shop_id"], name: "index_shop_photos_on_shop_id", using: :btree

  create_table "shops", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "lat"
    t.float    "lng"
    t.integer  "collectors_count", default: 0
    t.integer  "fans_count",       default: 0
    t.integer  "photos_count",     default: 0
  end

  add_index "shops", ["collectors_count"], name: "index_shops_on_collectors_count", using: :btree
  add_index "shops", ["fans_count"], name: "index_shops_on_fans_count", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "rating"
    t.integer  "points",                 default: 0
    t.string   "mobile_phone"
    t.string   "gender"
    t.text     "bio"
    t.integer  "orders_count",           default: 0
    t.string   "openid"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["openid"], name: "index_users_on_openid", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "weixin_menus", force: true do |t|
    t.string  "menu_type"
    t.string  "name"
    t.string  "key"
    t.string  "url"
    t.integer "weixin_sub_menus_count", default: 0
    t.integer "sequence",               default: 0
  end

  create_table "weixin_sub_menus", force: true do |t|
    t.integer "weixin_menu_id"
    t.string  "menu_type"
    t.string  "name"
    t.string  "key"
    t.string  "url"
    t.integer "sequence",       default: 0
  end

end
