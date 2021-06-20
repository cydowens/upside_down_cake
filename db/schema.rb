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

ActiveRecord::Schema.define(version: 2021_06_20_192904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bakeries", force: :cascade do |t|
    t.string "name"
    t.boolean "is_open"
    t.integer "num_of_cakes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cake_toppings", force: :cascade do |t|
    t.bigint "cake_id", null: false
    t.bigint "topping_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cake_id"], name: "index_cake_toppings_on_cake_id"
    t.index ["topping_id"], name: "index_cake_toppings_on_topping_id"
  end

  create_table "cakes", force: :cascade do |t|
    t.string "name"
    t.boolean "sugar_free"
    t.integer "num_of_layers"
    t.bigint "bakery_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bakery_id"], name: "index_cakes_on_bakery_id"
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.boolean "sugar_free"
    t.integer "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cake_toppings", "cakes"
  add_foreign_key "cake_toppings", "toppings"
  add_foreign_key "cakes", "bakeries"
end
