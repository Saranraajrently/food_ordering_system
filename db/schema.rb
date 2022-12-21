# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_21_111835) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "adminname"
    t.string "admin_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "card_histories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "order_id"
    t.date "payment_date"
    t.string "payment_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "card_name"
    t.integer "card_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "menu_price"
    t.string "menu_name"
    t.string "menu_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "user_selected_id"
    t.integer "order_selected_id"
    t.integer "menu_selected_id"
    t.bigint "menu_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_order_details_on_menu_id"
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.date "order_date"
    t.integer "no_of_menu"
    t.integer "total_price"
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "ratable_section"
    t.string "ratable_name"
    t.string "ratable_type"
    t.bigint "ratable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ratable_type", "ratable_id"], name: "index_ratings_on_ratable"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "user_password"
    t.string "user_address"
    t.string "user_phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
