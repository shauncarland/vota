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

ActiveRecord::Schema.define(version: 2019_04_09_231908) do

  create_table "bills", force: :cascade do |t|
    t.string "title"
    t.string "bill_url"
    t.string "summary"
    t.integer "representative_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["representative_id"], name: "index_bills_on_representative_id"
  end

  create_table "constituent_district_memberships", force: :cascade do |t|
    t.integer "constituent_id"
    t.integer "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constituent_id"], name: "index_constituent_district_memberships_on_constituent_id"
    t.index ["district_id"], name: "index_constituent_district_memberships_on_district_id"
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
    t.string "uuid"
    t.index ["email"], name: "index_constituents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_constituents_on_reset_password_token", unique: true
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "representative_profiles", force: :cascade do |t|
    t.string "priorities"
    t.string "motivations"
    t.integer "representative_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["representative_id"], name: "index_representative_profiles_on_representative_id"
  end

  create_table "representatives", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "uuid"
    t.string "phone_number"
    t.string "website"
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.boolean "allow_password_change", default: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.text "tokens"
    t.index ["email"], name: "index_representatives_on_email", unique: true
    t.index ["reset_password_token"], name: "index_representatives_on_reset_password_token", unique: true
  end

  create_table "terms", force: :cascade do |t|
    t.integer "representative_id"
    t.integer "district_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_terms_on_district_id"
    t.index ["representative_id"], name: "index_terms_on_representative_id"
  end

end
