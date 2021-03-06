# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160113122901) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["course_id"], name: "index_comments_on_course_id"
  add_index "comments", ["parent_id"], name: "index_comments_on_parent_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "course_num"
    t.string   "teacher"
    t.string   "department"
    t.string   "introduction"
    t.string   "classroom"
    t.string   "commnet_num"
    t.string   "zan"
    t.string   "credit"
    t.string   "course_type"
    t.string   "remarks"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "courses_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
  end

  create_table "microposts", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.string   "gender"
    t.string   "phone"
    t.string   "department"
    t.string   "major"
    t.string   "picture"
    t.string   "tag"
    t.string   "qq"
    t.string   "introduction"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.boolean  "admin"
  end

end
