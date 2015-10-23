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

ActiveRecord::Schema.define(version: 20151014015921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Locations_Products", id: false, force: :cascade do |t|
    t.integer "product_id",  null: false
    t.integer "location_id", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "title"
    t.string   "address"
    t.integer  "coordinate_x"
    t.integer  "coordinate_y"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.integer  "category_id"
    t.decimal  "middle_price"
    t.boolean  "lac_free"
    t.boolean  "gluten_free"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products_locations", id: false, force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
