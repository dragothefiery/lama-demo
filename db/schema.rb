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

ActiveRecord::Schema.define(version: 20160425191562) do

  create_table "lama_currencies", force: :cascade do |t|
    t.string   "name"
    t.string   "numcode"
    t.boolean  "base"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "lama_currencies", ["created_user_id"], name: "index_lama_currencies_on_created_user_id"
  add_index "lama_currencies", ["updated_user_id"], name: "index_lama_currencies_on_updated_user_id"

  create_table "lama_delivery_systems", force: :cascade do |t|
    t.string   "name"
    t.boolean  "active"
    t.text     "description"
    t.float    "price"
    t.integer  "currency_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lama_files", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.text     "description"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.string   "external_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "lama_files", ["created_user_id"], name: "index_lama_files_on_created_user_id"
  add_index "lama_files", ["updated_user_id"], name: "index_lama_files_on_updated_user_id"

  create_table "lama_orders", force: :cascade do |t|
    t.integer  "person_type_id"
    t.boolean  "payed",                 default: false
    t.datetime "payed_at"
    t.boolean  "cancelled",             default: false
    t.datetime "cancelled_at"
    t.text     "cancelled_reason"
    t.integer  "status"
    t.datetime "status_changed_at"
    t.float    "price"
    t.float    "discount"
    t.integer  "currency_id"
    t.integer  "payment_system_id"
    t.integer  "delivery_system_id"
    t.float    "delivery_price"
    t.boolean  "allow_delivery",        default: false
    t.datetime "allow_delivery_at"
    t.string   "ps_status"
    t.string   "ps_status_code"
    t.text     "ps_status_description"
    t.string   "ps_status_message"
    t.float    "ps_sum"
    t.string   "ps_currency"
    t.datetime "ps_response_at"
    t.float    "tax_value"
    t.string   "delivery_doc_num"
    t.datetime "delivery_doc_at"
    t.string   "tracking_number"
    t.string   "xml_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "lama_payment_systems", force: :cascade do |t|
    t.string   "name"
    t.boolean  "active",      default: false
    t.text     "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "lama_person_types", force: :cascade do |t|
    t.string   "name"
    t.boolean  "active",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "lama_price_types", force: :cascade do |t|
    t.string   "name"
    t.boolean  "base"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.string   "external_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "lama_price_types", ["created_user_id"], name: "index_lama_price_types_on_created_user_id"
  add_index "lama_price_types", ["updated_user_id"], name: "index_lama_price_types_on_updated_user_id"

  create_table "lama_prices", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "price_type_id"
    t.integer  "currency_id"
    t.float    "price"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "lama_prices", ["created_user_id"], name: "index_lama_prices_on_created_user_id"
  add_index "lama_prices", ["currency_id"], name: "index_lama_prices_on_currency_id"
  add_index "lama_prices", ["price_type_id"], name: "index_lama_prices_on_price_type_id"
  add_index "lama_prices", ["product_id"], name: "index_lama_prices_on_product_id"
  add_index "lama_prices", ["updated_user_id"], name: "index_lama_prices_on_updated_user_id"

  create_table "lama_product_sections", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lama_product_sections", ["product_id"], name: "index_lama_product_sections_on_product_id"
  add_index "lama_product_sections", ["section_id"], name: "index_lama_product_sections_on_section_id"

  create_table "lama_products", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "sort"
    t.boolean  "active"
    t.datetime "active_from"
    t.datetime "active_to"
    t.text     "preview_text"
    t.integer  "preview_picture"
    t.text     "detail_text"
    t.integer  "detail_picture"
    t.string   "meta_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.integer  "section_id"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.string   "external_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "lama_products", ["created_user_id"], name: "index_lama_products_on_created_user_id"
  add_index "lama_products", ["section_id"], name: "index_lama_products_on_section_id"
  add_index "lama_products", ["updated_user_id"], name: "index_lama_products_on_updated_user_id"

  create_table "lama_sections", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "sort"
    t.boolean  "active"
    t.datetime "active_from"
    t.datetime "active_to"
    t.text     "preview_text"
    t.integer  "preview_picture"
    t.text     "detail_text"
    t.integer  "detail_picture"
    t.string   "meta_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.integer  "section_id"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.string   "external_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "lama_sections", ["created_user_id"], name: "index_lama_sections_on_created_user_id"
  add_index "lama_sections", ["section_id"], name: "index_lama_sections_on_section_id"
  add_index "lama_sections", ["updated_user_id"], name: "index_lama_sections_on_updated_user_id"

  create_table "lama_user_products", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "product_price_id"
    t.float    "price",            default: 0.0
    t.integer  "currency_id"
    t.string   "name"
    t.integer  "quantity",         default: 1
    t.float    "discount_price",   default: 0.0
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "lama_users", force: :cascade do |t|
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "lama_users", ["email"], name: "index_lama_users_on_email", unique: true
  add_index "lama_users", ["reset_password_token"], name: "index_lama_users_on_reset_password_token", unique: true

end
