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

ActiveRecord::Schema.define(version: 20141113054844) do

  create_table "acmts", force: true do |t|
    t.integer  "attraction_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acmts", ["user_id", "created_at"], name: "index_acmts_on_user_id_and_created_at"

  create_table "attractions", force: true do |t|
    t.string   "attracname"
    t.integer  "city_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bcmts", force: true do |t|
    t.integer  "blog_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bcmts", ["user_id", "created_at"], name: "index_bcmts_on_user_id_and_created_at"

  create_table "blogs", force: true do |t|
    t.integer  "user_id"
    t.integer  "city_id"
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogs", ["user_id", "created_at"], name: "index_blogs_on_user_id_and_created_at"

  create_table "cities", force: true do |t|
    t.string   "cityname"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.string   "foodname"
    t.integer  "city_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hcmts", force: true do |t|
    t.integer  "hotel_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hcmts", ["user_id", "created_at"], name: "index_hcmts_on_user_id_and_created_at"

  create_table "hotels", force: true do |t|
    t.string   "hotelname"
    t.integer  "attraction_id"
    t.string   "address"
    t.string   "tel"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planes", force: true do |t|
    t.string   "planeno"
    t.integer  "src_id"
    t.integer  "dst_id"
    t.string   "time"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.integer  "user_id"
    t.integer  "city_id"
    t.string   "time"
    t.integer  "number"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requests", ["user_id", "created_at"], name: "index_requests_on_user_id_and_created_at"

  create_table "routes", force: true do |t|
    t.integer  "city_id"
    t.string   "route"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trains", force: true do |t|
    t.string   "trainno"
    t.integer  "src_id"
    t.integer  "dst_id"
    t.string   "time"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "nickname"
    t.string   "sex"
    t.integer  "city_id"
    t.string   "note"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
