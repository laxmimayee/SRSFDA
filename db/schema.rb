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

ActiveRecord::Schema.define(version: 20150107103929) do

  create_table "carts", force: true do |t|
    t.string   "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "States"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "user_id"
    t.float    "paid_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "date"
    t.float    "price"
    t.string   "price_change"
    t.float    "mon_high"
    t.float    "mon_low"
    t.float    "mon_begin"
    t.string   "seven_day_chng"
    t.string   "two_month_back"
    t.float    "hv"
    t.float    "hvt"
    t.float    "hvb"
    t.float    "vol_jump"
    t.float    "TI"
    t.float    "TI5"
    t.float    "TI30"
    t.float    "TDREI"
    t.string   "MA_trig"
    t.string   "BO_trig"
    t.string   "TI_trig"
    t.string   "TDREI_trig"
    t.string   "TREND"
    t.string   "EoL"
    t.float    "volume_change"
    t.string   "price_price_three_monthsback"
    t.string   "price_mon_begin"
    t.string   "hvt_perc"
    t.string   "hvb_perc"
    t.string   "monthly_sd"
    t.integer  "TI_int"
    t.integer  "Trend_MA"
    t.integer  "Trend_TI"
    t.string   "Trend_TIMonthly"
    t.string   "Trigg_up"
    t.string   "Trigg_down"
    t.string   "up_taregtcall"
    t.string   "down_tagetput"
    t.string   "price_mon_high"
    t.string   "price_mon_low"
    t.string   "NSE_code"
    t.string   "generate_option_price"
    t.string   "HV_round"
    t.string   "ATM_call_strike"
    t.string   "ATM_Cal_price"
    t.string   "ATM_Call_IV"
    t.string   "ATM_put_strike"
    t.string   "ATM_put_price"
    t.string   "ATM_put_IV"
    t.string   "one_Month_SV"
    t.string   "target_call_strike"
    t.string   "target_call_price"
    t.string   "call_strike_price"
    t.string   "IV_ATM_IV"
    t.string   "target_put_strike"
    t.string   "target_put_price"
    t.string   "put_strike_price"
    t.string   "exp_change_by_expiry"
    t.string   "Yield_put"
    t.string   "Yield_call"
    t.string   "Yield_total"
    t.string   "Call_ATM_1_Mo_HV"
    t.string   "Put_ATM_1_Mo_HV"
    t.string   "Heikin_trigger"
    t.string   "Heikin_trend"
  end

  create_table "subscriptions", force: true do |t|
    t.string   "subscription_type"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "plan"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.integer  "country_code"
    t.integer  "state_code"
    t.integer  "subscription_id"
    t.boolean  "admin"
    t.string   "role",                   default: "user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
