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

ActiveRecord::Schema.define(version: 20170117021026) do

  create_table "bucket_topics", force: :cascade do |t|
    t.integer "buket_id"
    t.integer "topic_id"
  end

  create_table "buckets", force: :cascade do |t|
    t.string  "title"
    t.integer "user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string  "comment"
    t.integer "user_id"
    t.integer "element_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string  "content"
    t.boolean "completed", default: false
    t.string  "title"
    t.integer "bucket_id"
    t.integer "user_id"
    t.string  "picture"
  end

  create_table "topics", force: :cascade do |t|
    t.string "hashtag"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "email"
    t.string "avatar"
    t.string "password_digest"
  end

end
