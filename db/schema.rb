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

ActiveRecord::Schema.define(version: 2020_05_29_211503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "flag_url"
    t.string "region"
    t.string "language"
    t.string "sub_region"
    t.string "capital"
    t.integer "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "symbol"
    t.float "atomic_weight"
    t.integer "atomic_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_countries", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_game_countries_on_country_id"
    t.index ["game_id"], name: "index_game_countries_on_game_id"
  end

  create_table "game_elements", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "element_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["element_id"], name: "index_game_elements_on_element_id"
    t.index ["game_id"], name: "index_game_elements_on_game_id"
  end

  create_table "game_numbers", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "number_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_numbers_on_game_id"
    t.index ["number_id"], name: "index_game_numbers_on_number_id"
  end

  create_table "game_presidents", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "president_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_presidents_on_game_id"
    t.index ["president_id"], name: "index_game_presidents_on_president_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "type"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "numbers", force: :cascade do |t|
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "presidents", force: :cascade do |t|
    t.string "name"
    t.string "term"
    t.string "party"
    t.string "image_url"
    t.integer "president_order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "point"
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_scores_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.integer "age"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "game_countries", "countries"
  add_foreign_key "game_countries", "games"
  add_foreign_key "game_elements", "elements"
  add_foreign_key "game_elements", "games"
  add_foreign_key "game_numbers", "games"
  add_foreign_key "game_numbers", "numbers"
  add_foreign_key "game_presidents", "games"
  add_foreign_key "game_presidents", "presidents"
  add_foreign_key "games", "users"
  add_foreign_key "scores", "games"
end
