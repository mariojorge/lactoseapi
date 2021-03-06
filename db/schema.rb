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

ActiveRecord::Schema.define(version: 20151024141711) do

  create_table "categories", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "address",       limit: 255
    t.integer  "coordinate_x",  limit: 4
    t.integer  "coordinate_y",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "home_delivery"
    t.string   "phone",         limit: 255
  end

  create_table "locations_products", id: false, force: :cascade do |t|
    t.integer "product_id",  limit: 4, null: false
    t.integer "location_id", limit: 4, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title",                      limit: 255
    t.integer  "category_id",                limit: 4
    t.decimal  "middle_price",                           precision: 10
    t.boolean  "lac_free"
    t.boolean  "gluten_free"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "product_image_file_name",    limit: 255
    t.string   "product_image_content_type", limit: 255
    t.integer  "product_image_file_size",    limit: 4
    t.datetime "product_image_updated_at"
  end

end
