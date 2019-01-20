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

ActiveRecord::Schema.define(version: 2019_01_20_052758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
  end

  create_table "city_regions", force: :cascade do |t|
    t.bigint "city_id"
    t.bigint "region_id"
    t.index ["city_id"], name: "index_city_regions_on_city_id"
    t.index ["region_id"], name: "index_city_regions_on_region_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "city_id"
    t.string "title"
    t.string "company"
    t.integer "base_salary"
    t.integer "has_nearterm_perf_review", default: 2
    t.text "salary_notes"
    t.integer "has_bonus", default: 2
    t.text "bonus_notes"
    t.integer "has_equity", default: 2
    t.integer "equity_count", default: 0
    t.float "equity_strike_price", default: 0.0
    t.text "equity_notes"
    t.integer "has_medical", default: 2
    t.integer "has_dental", default: 2
    t.integer "has_vision", default: 2
    t.text "other_benefits_notes"
    t.integer "pto_days", default: 0
    t.integer "sick_days", default: 0
    t.integer "has_wfh", default: 2
    t.integer "wfh_days", default: 0
    t.integer "has_family_leave", default: 2
    t.integer "family_leave_days", default: 0
    t.text "timeoff_notes"
    t.integer "has_retirement", default: 2
    t.text "retirement_notes"
    t.integer "has_prof_devel", default: 2
    t.text "prof_devel_notes"
    t.integer "hardware_provided", default: 2
    t.text "hardware_notes"
    t.text "other_notes"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_jobs_on_city_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.string "cohort"
    t.integer "role"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "city_regions", "cities"
  add_foreign_key "city_regions", "regions"
  add_foreign_key "jobs", "cities"
  add_foreign_key "jobs", "users"
end
