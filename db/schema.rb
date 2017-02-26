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

ActiveRecord::Schema.define(version: 20170226160316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_bookmarks_on_product_id", using: :btree
    t.index ["user_id"], name: "index_bookmarks_on_user_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "brand"
    t.string   "title"
    t.string   "barcode_link"
    t.integer  "EAN"
    t.integer  "UPC"
    t.integer  "ASIN"
    t.integer  "model"
    t.text     "description"
    t.boolean  "has_ar",       default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "difficulty_rating"
    t.text     "review",            null: false
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["product_id"], name: "index_reviews_on_product_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name",       null: false
    t.string   "password_digest", null: false
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", using: :btree
  end

  add_foreign_key "bookmarks", "products"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
end
