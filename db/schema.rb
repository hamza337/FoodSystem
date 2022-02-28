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

ActiveRecord::Schema[7.0].define(version: 2022_02_28_120912) do
  create_table "coupons", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.decimal "discount"
    t.integer "maximum_uses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_groups", force: :cascade do |t|
    t.string "name"
    t.integer "order_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_item_extras", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.integer "order_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.integer "order_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opening_hours", force: :cascade do |t|
    t.integer "from_hour"
    t.integer "from_minute"
    t.integer "to_hour"
    t.integer "to_minute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_item_extras", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.text "description"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "week_days", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
