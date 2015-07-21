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

ActiveRecord::Schema.define(version: 20150714035217) do

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.integer  "album_creator_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "albums", ["album_creator_id"], name: "index_albums_on_album_creator_id"
  add_index "albums", ["country_id"], name: "index_albums_on_country_id"

  create_table "comments", force: :cascade do |t|
    t.string   "text"
    t.integer  "photo_id"
    t.integer  "commenter_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "comments", ["commenter_id"], name: "index_comments_on_commenter_id"
  add_index "comments", ["photo_id"], name: "index_comments_on_photo_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "friendships", ["friend_id"], name: "index_friendships_on_friend_id"
  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id"

  create_table "photo_tags", force: :cascade do |t|
    t.integer  "photo_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photo_tags", ["photo_id"], name: "index_photo_tags_on_photo_id"
  add_index "photo_tags", ["tag_id"], name: "index_photo_tags_on_tag_id"

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "poster_id"
    t.integer  "album_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "photos", ["album_id"], name: "index_photos_on_album_id"
  add_index "photos", ["poster_id"], name: "index_photos_on_poster_id"

  create_table "tags", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "bio"
    t.string   "avatar"
    t.boolean  "private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visited_countries", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "visited_countries", ["country_id"], name: "index_visited_countries_on_country_id"
  add_index "visited_countries", ["user_id"], name: "index_visited_countries_on_user_id"

end
