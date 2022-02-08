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

ActiveRecord::Schema.define(version: 2022_02_06_152841) do

  create_table "mangas", force: :cascade do |t|
    t.string "title"
    t.integer "pub_vols"
    t.string "status"
    t.string "collection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "releases", force: :cascade do |t|
    t.integer "date"
    t.string "month"
    t.string "day"
    t.string "link"
    t.string "picture"
    t.string "editor"
    t.string "title"
    t.string "book"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "volumes", force: :cascade do |t|
    t.integer "manga_id", null: false
    t.integer "number"
    t.date "rel_date"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manga_id"], name: "index_volumes_on_manga_id"
  end

  add_foreign_key "volumes", "mangas"
end
