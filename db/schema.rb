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

ActiveRecord::Schema.define(version: 2019_10_03_211443) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "act_type"
    t.integer "pref_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "buddies", force: :cascade do |t|
    t.string "name"
    t.integer "img_num"
    t.string "w_prefs"
    t.string "s_prefs"
    t.string "f_prefs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "buddy_id"
    t.integer "hangout_id"
    t.integer "friendship_rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hangouts", force: :cascade do |t|
    t.integer "friendship_id"
    t.integer "activity_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.string "email"
    t.string "name"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
