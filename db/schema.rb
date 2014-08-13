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

ActiveRecord::Schema.define(version: 20140813132928) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",       precision: 10, scale: 0
    t.boolean  "visible"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["store_id"], name: "index_products_on_store_id", using: :btree

  create_table "sales", force: true do |t|
    t.integer  "customer_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "sub_total",      precision: 10, scale: 0
    t.decimal  "shipping_price", precision: 10, scale: 0
    t.decimal  "tax",            precision: 10, scale: 0
    t.decimal  "total",          precision: 10, scale: 0
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["customer_id"], name: "index_sales_on_customer_id", using: :btree
  add_index "sales", ["product_id"], name: "index_sales_on_product_id", using: :btree

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trends", force: true do |t|
    t.integer  "product_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trends", ["customer_id"], name: "index_trends_on_customer_id", using: :btree
  add_index "trends", ["product_id"], name: "index_trends_on_product_id", using: :btree

end
