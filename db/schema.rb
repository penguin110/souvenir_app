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

ActiveRecord::Schema.define(version: 20210403071239) do

  create_table "actions", force: :cascade do |t|
    t.text "comment"
    t.integer "user_id"
    t.integer "souvenir_id"
    t.integer "good"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "souvenir_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["souvenir_id"], name: "index_comments_on_souvenir_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "souvenir_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.integer "user_id"
    t.integer "souvenir_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "souvenirs", force: :cascade do |t|
    t.string "name"
    t.string "prefectures"
    t.text "comment"
    t.string "image_name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "del_flg"
    t.integer "prefecture_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "handle_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
