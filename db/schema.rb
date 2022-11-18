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

ActiveRecord::Schema.define(version: 2022_11_14_191729) do

  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.string "spec"
    t.integer "wins"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.string "spec"
    t.integer "health"
    t.integer "strength"
    t.integer "agility"
    t.integer "intellect"
    t.integer "wins"
    t.string "image_URL"
  end

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.string "image_URL"
    t.boolean "played"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.integer "strength"
    t.integer "agility"
    t.integer "intellect"
    t.integer "map_id"
    t.boolean "defeated"
    t.string "image"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "item_name"
    t.integer "health_boost"
    t.integer "strength_boost"
    t.integer "agility_boost"
    t.integer "intellect_boost"
    t.integer "hero_id"
    t.integer "monster_id"
  end

end
