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

ActiveRecord::Schema.define(version: 20190330191350) do

  create_table "index_track_columns", force: :cascade do |t|
    t.string   "index_column_title"
    t.string   "index_title_image"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "menues", force: :cascade do |t|
    t.text     "title"
    t.text     "frequency"
    t.text     "stress"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "menue_event"
    t.string   "menue_level"
  end

  create_table "track_columns", force: :cascade do |t|
    t.string   "column_title"
    t.string   "title_image"
    t.string   "column_lead"
    t.string   "column_topic1"
    t.string   "column_article1"
    t.string   "column_image1"
    t.string   "column_topic2"
    t.string   "column_article2"
    t.string   "column_image2"
    t.string   "column_topic3"
    t.string   "column_article3"
    t.string   "column_image3"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "real_name"
    t.string   "user_name"
    t.string   "belong"
    t.string   "event"
    t.string   "tel"
    t.string   "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "best"
    t.string   "result"
    t.string   "target"
    t.string   "apeal"
  end

end
