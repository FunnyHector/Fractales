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

ActiveRecord::Schema.define(version: 20170125082708) do

  create_table "links", force: :cascade do |t|
    t.string   "signpost",     null: false
    t.integer  "from_node_id"
    t.integer  "to_node_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["from_node_id"], name: "index_links_on_from_node_id"
    t.index ["to_node_id"], name: "index_links_on_to_node_id"
  end

  create_table "nodes", force: :cascade do |t|
    t.string   "content",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tales", force: :cascade do |t|
    t.string   "title",        null: false
    t.integer  "root_node_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["root_node_id"], name: "index_tales_on_root_node_id"
  end

end
