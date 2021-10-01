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

ActiveRecord::Schema.define(version: 2021_09_26_025748) do

  create_table "customers", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "price"
    t.integer "quantity"
    t.string "payment_status"
    t.integer "order_id"
    t.datetime "created_at"
    t.datetime "due_by"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "style_number"
    t.string "color"
    t.string "size"
    t.string "print_color"
    t.string "print_location"
    t.datetime "due_date"
    t.integer "customer_id"
    t.string "order_status"
    t.datetime "created_at"
  end

end
