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

ActiveRecord::Schema.define(version: 20150812170328) do

  create_table "definitions", force: :cascade do |t|
    t.string  "definition"
    t.integer "count"
    t.integer "entry_id"
  end

  add_index "definitions", ["entry_id"], name: "index_definitions_on_entry_id"

  create_table "entries", force: :cascade do |t|
    t.string  "traditional"
    t.string  "simplified"
    t.string  "pinyin"
    t.integer "freq_count"
  end

  add_index "entries", ["simplified"], name: "index_entries_on_simplified"
  add_index "entries", ["traditional"], name: "index_entries_on_traditional"

end
