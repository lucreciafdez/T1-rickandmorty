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

ActiveRecord::Schema.define(version: 2020_03_29_213906) do

  create_table "characters", force: :cascade do |t|
    t.integer "id_char"
    t.string "name"
    t.string "status"
    t.string "species"
    t.string "type_char"
    t.string "gender"
    t.string "origin"
    t.text "location"
    t.text "image"
    t.string "episode"
    t.string "url"
    t.string "created"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "episodios", force: :cascade do |t|
    t.integer "id_epi"
    t.string "name"
    t.string "air_date"
    t.string "episode"
    t.text "characters"
    t.string "url"
    t.string "created"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "id_loc"
    t.string "name"
    t.string "type_loc"
    t.string "dimension"
    t.text "residents"
    t.string "url"
    t.string "created"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.integer "searchable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

end
