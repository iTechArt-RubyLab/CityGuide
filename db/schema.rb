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

ActiveRecord::Schema.define(version: 2022_01_04_142104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_informations", force: :cascade do |t|
    t.string "phone_number"
    t.string "email_address"
    t.string "address"
    t.string "messenger_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entity_profiles", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "age"
    t.text "note"
    t.bigint "contact_information_id"
    t.string "title_company"
    t.float "min_price"
    t.integer "min_time"
    t.float "price_one_hour"
    t.float "price_two_hours"
    t.time "start_work"
    t.time "end_work"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_information_id"], name: "index_entity_profiles_on_contact_information_id"
  end

  create_table "human_profiles", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "age"
    t.text "note"
    t.bigint "contact_information_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_information_id"], name: "index_human_profiles_on_contact_information_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "is_admin"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "profilable_type"
    t.bigint "profilable_id"
    t.string "uid"
    t.string "provider"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["profilable_type", "profilable_id"], name: "index_users_on_profilable"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
