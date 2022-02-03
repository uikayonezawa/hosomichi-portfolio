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

ActiveRecord::Schema.define(version: 2022_01_29_121624) do

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "newinfo_id"
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "order"
    t.string "name"
    t.string "surname"
    t.string "role"
    t.string "affiliation"
    t.string "position"
    t.date "entered_on"
    t.date "left_on"
    t.text "specialty"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "name_in_alphabet"
    t.string "surname_in_alphabet"
  end

  create_table "newinfos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "updated"
    t.text "title"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.text "img", null: false
  end

  create_table "papers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "author"
    t.text "title"
    t.string "journal"
    t.string "number"
    t.date "published"
    t.text "published_url"
    t.date "firstappeared"
    t.text "firstappeared_url"
    t.text "category"
    t.integer "fiscalyear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "projects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "text"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
