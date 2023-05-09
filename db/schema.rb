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

ActiveRecord::Schema[7.0].define(version: 2023_05_09_033826) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aquaria", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.string "address_city"
    t.string "address_detail"
    t.string "region"
    t.text "description"
    t.string "site_url"
    t.string "business_days_hours_url"
    t.string "entrance_fee_url"
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discarded_at"], name: "index_aquaria_on_discarded_at"
  end

  create_table "exhibitions", force: :cascade do |t|
    t.integer "moray_id"
    t.integer "aquarium_id"
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aquarium_id"], name: "index_exhibitions_on_aquarium_id"
    t.index ["moray_id", "aquarium_id"], name: "index_exhibitions_on_moray_id_and_aquarium_id", unique: true
    t.index ["moray_id"], name: "index_exhibitions_on_moray_id"
  end

  create_table "moray_comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "moray_id", null: false
    t.text "body"
    t.string "image"
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moray_id"], name: "index_moray_comments_on_moray_id"
    t.index ["user_id"], name: "index_moray_comments_on_user_id"
  end

  create_table "morays", force: :cascade do |t|
    t.string "avatar"
    t.string "name_ja"
    t.string "name_en"
    t.string "name_academic"
    t.float "max_length"
    t.string "max_length_str"
    t.string "distribution"
    t.text "description"
    t.string "video_url"
    t.datetime "discarded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discarded_at"], name: "index_morays_on_discarded_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid", null: false
    t.string "name", null: false
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uid"], name: "index_users_on_uid", unique: true
  end

  add_foreign_key "moray_comments", "morays"
  add_foreign_key "moray_comments", "users"
end
