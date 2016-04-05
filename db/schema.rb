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

ActiveRecord::Schema.define(version: 20160405171757) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "articles_tags", id: false, force: :cascade do |t|
    t.integer "article_id", limit: 4, null: false
    t.integer "tag_id",     limit: 4, null: false
  end

  create_table "cameras", force: :cascade do |t|
    t.string   "iso",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "total_price", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "pcs", force: :cascade do |t|
    t.string   "cpu",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "goal",       limit: 4
    t.integer  "homerun",    limit: 4
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "order_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "product_orders", ["order_id"], name: "index_product_orders_on_order_id", using: :btree
  add_index "product_orders", ["product_id"], name: "index_product_orders_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "reviewable_id",   limit: 4
    t.string   "reviewable_type", limit: 255
    t.string   "message",         limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "reviews", ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "product_orders", "orders"
  add_foreign_key "product_orders", "products"
end
