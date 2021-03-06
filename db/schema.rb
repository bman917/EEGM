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

ActiveRecord::Schema.define(version: 20140106083110) do

  create_table "items", force: true do |t|
    t.integer  "supplier_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["supplier_id"], name: "index_items_on_supplier_id"

  create_table "phones", force: true do |t|
    t.integer  "supplier_id"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["supplier_id"], name: "index_phones_on_supplier_id"

  create_table "purchase_items", force: true do |t|
    t.integer  "item_id"
    t.integer  "purchase_order_id"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchase_items", ["item_id"], name: "index_purchase_items_on_item_id"
  add_index "purchase_items", ["purchase_order_id"], name: "index_purchase_items_on_purchase_order_id"

  create_table "purchase_orders", force: true do |t|
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact_person"
  end

  add_index "purchase_orders", ["supplier_id"], name: "index_purchase_orders_on_supplier_id"

  create_table "suppliers", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suppliers", ["name"], name: "index_suppliers_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
    t.string   "email",      limit: nil
  end

end
