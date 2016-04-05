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

ActiveRecord::Schema.define(version: 20160405145417) do

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

  create_table "lama_products", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "sort"
    t.boolean  "active"
    t.datetime "active_from"
    t.datetime "active_to"
    t.text     "preview_text"
    t.integer  "preview_picture_file_id"
    t.text     "detail_text"
    t.integer  "detail_picture_file_id"
    t.string   "meta_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.integer  "section_id"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.string   "external_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "lama_products", ["created_user_id"], name: "index_lama_products_on_created_user_id"
  add_index "lama_products", ["detail_picture_file_id"], name: "index_lama_products_on_detail_picture_file_id"
  add_index "lama_products", ["preview_picture_file_id"], name: "index_lama_products_on_preview_picture_file_id"
  add_index "lama_products", ["section_id"], name: "index_lama_products_on_section_id"
  add_index "lama_products", ["updated_user_id"], name: "index_lama_products_on_updated_user_id"

  create_table "lama_sections", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "sort"
    t.boolean  "active"
    t.datetime "active_from"
    t.datetime "active_to"
    t.text     "preview_text"
    t.integer  "preview_picture_file_id"
    t.text     "detail_text"
    t.integer  "detail_picture_file_id"
    t.string   "meta_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.integer  "section_id"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.string   "external_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "lama_sections", ["created_user_id"], name: "index_lama_sections_on_created_user_id"
  add_index "lama_sections", ["detail_picture_file_id"], name: "index_lama_sections_on_detail_picture_file_id"
  add_index "lama_sections", ["preview_picture_file_id"], name: "index_lama_sections_on_preview_picture_file_id"
  add_index "lama_sections", ["section_id"], name: "index_lama_sections_on_section_id"
  add_index "lama_sections", ["updated_user_id"], name: "index_lama_sections_on_updated_user_id"

  create_table "lama_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "lama_users", ["email"], name: "index_lama_users_on_email", unique: true
  add_index "lama_users", ["reset_password_token"], name: "index_lama_users_on_reset_password_token", unique: true

end
