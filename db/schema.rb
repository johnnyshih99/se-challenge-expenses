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

ActiveRecord::Schema.define(version: 20170109013348) do

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
  end

  add_index "employees", ["name", "address"], name: "index_employees_on_name_and_address", unique: true, using: :btree

  create_table "expenses", force: :cascade do |t|
    t.date     "date"
    t.string   "category",     limit: 255
    t.string   "expense_desc", limit: 255
    t.decimal  "amount",                   precision: 8, scale: 2
    t.string   "tax_name",     limit: 255
    t.decimal  "tax_amount",               precision: 8, scale: 2
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "employee_id",  limit: 4
  end

  add_index "expenses", ["employee_id"], name: "index_expenses_on_employee_id", using: :btree

  add_foreign_key "expenses", "employees"
end
