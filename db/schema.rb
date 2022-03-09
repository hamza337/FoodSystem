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

ActiveRecord::Schema[7.0].define(version: 2022_03_06_121002) do
  create_table "coupons", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.decimal "discount"
    t.integer "maximum_uses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_coupons_on_restaurant_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "menu_groups", force: :cascade do |t|
    t.string "name"
    t.integer "order_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Menu_id", null: false
    t.index ["Menu_id"], name: "index_menu_groups_on_Menu_id"
  end

  create_table "menu_item_extras", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.integer "order_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "menu_item_id", null: false
    t.index ["menu_item_id"], name: "index_menu_item_extras_on_menu_item_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.integer "order_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "menu_group_id", null: false
    t.index ["menu_group_id"], name: "index_menu_items_on_menu_group_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "opening_hours", force: :cascade do |t|
    t.integer "from_hour"
    t.integer "from_minute"
    t.integer "to_hour"
    t.integer "to_minute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id", null: false
    t.integer "week_day_id", null: false
    t.index ["restaurant_id"], name: "index_opening_hours_on_restaurant_id"
    t.index ["week_day_id"], name: "index_opening_hours_on_week_day_id"
  end

  create_table "order_item_extras", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "menu_item_extra_id", null: false
    t.integer "order_item_id", null: false
    t.index ["menu_item_extra_id"], name: "index_order_item_extras_on_menu_item_extra_id"
    t.index ["order_item_id"], name: "index_order_item_extras_on_order_item_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "menu_item_id", null: false
    t.integer "order_id", null: false
    t.index ["menu_item_id"], name: "index_order_items_on_menu_item_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "creation_date"
    t.datetime "ordered_date"
    t.datetime "prepared_date"
    t.datetime "taken_over_date"
    t.boolean "is_paid"
    t.integer "price"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_status_id", null: false
    t.integer "restaurant_id", null: false
    t.integer "coupon_id", null: false
    t.integer "customer_id", null: false
    t.index ["coupon_id"], name: "index_orders_on_coupon_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.text "description"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "menu_id", null: false
    t.index ["menu_id"], name: "index_restaurants_on_menu_id"
  end

  create_table "week_days", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "coupons", "restaurants"
  add_foreign_key "menu_groups", "Menus"
  add_foreign_key "menu_item_extras", "menu_items"
  add_foreign_key "menu_items", "menu_groups"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "opening_hours", "restaurants"
  add_foreign_key "opening_hours", "week_days"
  add_foreign_key "order_item_extras", "menu_item_extras"
  add_foreign_key "order_item_extras", "order_items"
  add_foreign_key "order_items", "menu_items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "coupons"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "restaurants", "menus"
end
