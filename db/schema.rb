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

ActiveRecord::Schema.define(version: 20171201120758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "xp"
    t.integer "armor"
    t.integer "health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "player_class_id"
    t.integer "renown"
    t.integer "currency"
    t.bigint "weapon_id"
    t.integer "level"
    t.index ["player_class_id"], name: "index_characters_on_player_class_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
    t.index ["weapon_id"], name: "index_characters_on_weapon_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.integer "armor"
    t.integer "xp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "player_class_id"
    t.bigint "weapon_id"
    t.index ["player_class_id"], name: "index_monsters_on_player_class_id"
    t.index ["weapon_id"], name: "index_monsters_on_weapon_id"
  end

  create_table "player_classes", force: :cascade do |t|
    t.string "name"
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "wis"
    t.integer "int"
    t.integer "cha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quest_monsters", force: :cascade do |t|
    t.bigint "quest_id"
    t.bigint "monster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_quest_monsters_on_monster_id"
    t.index ["quest_id"], name: "index_quest_monsters_on_quest_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string "story"
    t.integer "reward"
    t.integer "renown"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "dice"
    t.integer "sides"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters", "player_classes"
  add_foreign_key "characters", "users"
  add_foreign_key "characters", "weapons"
  add_foreign_key "examples", "users"
  add_foreign_key "monsters", "player_classes"
  add_foreign_key "monsters", "weapons"
  add_foreign_key "quest_monsters", "monsters"
  add_foreign_key "quest_monsters", "quests"
end
