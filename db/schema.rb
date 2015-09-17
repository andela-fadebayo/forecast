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

ActiveRecord::Schema.define(version: 20150917102922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets_balance_summaries", force: :cascade do |t|
    t.integer  "budgets_monthly_earning_id"
    t.integer  "starting",                   limit: 8
    t.integer  "ending",                     limit: 8
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "budgets_balance_summaries", ["budgets_monthly_earning_id"], name: "index_budgets_balance_summaries_on_budgets_monthly_earning_id", using: :btree

  create_table "budgets_budgets", force: :cascade do |t|
    t.integer  "budgets_balance_summary_id"
    t.integer  "amount",                     limit: 8
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "budgets_budgets", ["budgets_balance_summary_id"], name: "index_budgets_budgets_on_budgets_balance_summary_id", using: :btree

  create_table "budgets_monthly_earnings", force: :cascade do |t|
    t.string   "monthyear"
    t.integer  "earning",    limit: 8
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "guest_id"
  end

  add_index "budgets_monthly_earnings", ["guest_id"], name: "index_budgets_monthly_earnings_on_guest_id", using: :btree

  create_table "guests", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "sex"
    t.date     "birthday"
  end

  add_index "guests", ["reset_password_token"], name: "index_guests_on_reset_password_token", unique: true, using: :btree
  add_index "guests", ["username"], name: "index_guests_on_username", unique: true, using: :btree

  create_table "providers", force: :cascade do |t|
    t.integer  "guest_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.string   "refresh_token"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "providers", ["guest_id"], name: "index_providers_on_guest_id", using: :btree

  create_table "shopquik_todo_items", force: :cascade do |t|
    t.string   "item"
    t.integer  "quantity"
    t.integer  "cost"
    t.integer  "shopquik_todo_list_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.datetime "completed_at"
  end

  add_index "shopquik_todo_items", ["shopquik_todo_list_id"], name: "index_shopquik_todo_items_on_shopquik_todo_list_id", using: :btree

  create_table "shopquik_todo_lists", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "guest_id"
    t.integer  "total_expenses", limit: 8
  end

  add_index "shopquik_todo_lists", ["guest_id"], name: "index_shopquik_todo_lists_on_guest_id", using: :btree

  add_foreign_key "budgets_monthly_earnings", "guests"
  add_foreign_key "providers", "guests"
  add_foreign_key "shopquik_todo_items", "shopquik_todo_lists"
  add_foreign_key "shopquik_todo_lists", "guests"
end
