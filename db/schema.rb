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

ActiveRecord::Schema.define(version: 2021_02_23_154303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "date"
    t.string "address"
    t.date "order_date"
    t.string "_status"
    t.date "shipment_date"
    t.string "total_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "placeorderjoins", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_placeorderjoins_on_customer_id"
    t.index ["order_id"], name: "index_placeorderjoins_on_order_id"
  end

  create_table "productcustomerjoins", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_productcustomerjoins_on_customer_id"
    t.index ["product_id"], name: "index_productcustomerjoins_on_product_id"
  end

  create_table "productorderjoins", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_productorderjoins_on_order_id"
    t.index ["product_id"], name: "index_productorderjoins_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "price"
    t.string "image"
    t.string "description"
    t.string "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "placeorderjoins", "customers"
  add_foreign_key "placeorderjoins", "orders"
  add_foreign_key "productcustomerjoins", "customers"
  add_foreign_key "productcustomerjoins", "products"
  add_foreign_key "productorderjoins", "orders"
  add_foreign_key "productorderjoins", "products"
end
