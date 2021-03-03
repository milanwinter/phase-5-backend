# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_25_194319) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "resort_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resort_id"], name: "index_favorites_on_resort_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "state"
    t.string "logo"
    t.string "map"
    t.string "api_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.string "content"
    t.integer "user_id", null: false
    t.integer "resort_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resort_id"], name: "index_reviews_on_resort_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "skill"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorites", "resorts"
  add_foreign_key "favorites", "users"
  add_foreign_key "reviews", "resorts"
  add_foreign_key "reviews", "users"
end
