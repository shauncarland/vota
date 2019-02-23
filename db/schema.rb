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

ActiveRecord::Schema.define(version: 2019_02_23_035359) do

  create_table "bills", force: :cascade do |t|
    t.string "title"
    t.string "bill_url"
    t.string "summary"
    t.integer "represenative_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["represenative_id"], name: "index_bills_on_represenative_id"
  end

  create_table "constituents", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "email_alerts", default: false
    t.boolean "text_alerts"
    t.index ["email"], name: "index_constituents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_constituents_on_reset_password_token", unique: true
  end

  create_table "represenatives", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_represenatives_on_email", unique: true
    t.index ["reset_password_token"], name: "index_represenatives_on_reset_password_token", unique: true
  end

end
