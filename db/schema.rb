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

ActiveRecord::Schema.define(version: 2020_11_16_153520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rents", force: :cascade do |t|
    t.float "price"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "vinyl_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rents_on_user_id"
    t.index ["vinyl_id"], name: "index_rents_on_vinyl_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "address"
    t.datetime "date_of_birth"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vinyls", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.string "artist"
    t.string "genre"
    t.string "label"
    t.string "quality"
    t.string "dimension"
    t.float "price_per_day"
    t.boolean "available"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_vinyls_on_user_id"
  end

  add_foreign_key "rents", "users"
  add_foreign_key "rents", "vinyls"
  add_foreign_key "vinyls", "users"
end
