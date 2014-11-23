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

ActiveRecord::Schema.define(version: 20141120122205) do

  create_table "cart_items", force: true do |t|
    t.integer  "cart_id",                null: false
    t.integer  "product_id",             null: false
    t.integer  "quantity",   default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cart_items", ["cart_id"], name: "index_cart_items_on_cart_id", using: :btree
  add_index "cart_items", ["product_id"], name: "index_cart_items_on_product_id", using: :btree

  create_table "carts", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.integer  "price"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name", limit: 45, null: false
    t.string   "last_name",  limit: 45, null: false
    t.string   "address1",   limit: 45
    t.string   "address2",   limit: 45
    t.string   "city",       limit: 45
    t.string   "state",      limit: 45
    t.string   "country",    limit: 45
    t.integer  "zip"
    t.string   "phone",      limit: 45
    t.string   "email",      limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
