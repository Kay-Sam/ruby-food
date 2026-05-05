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

ActiveRecord::Schema[8.1].define(version: 2026_05_05_142227) do
  create_schema "extensions"

  # These are extensions that must be enabled in order to support this database
  enable_extension "extensions.pg_stat_statements"
  enable_extension "extensions.pgcrypto"
  enable_extension "extensions.uuid-ossp"
  enable_extension "pg_catalog.plpgsql"
  enable_extension "vault.supabase_vault"

  create_table "public.meals", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.text "description"
    t.string "emoji"
    t.string "image_url"
    t.string "name"
    t.text "recipe_steps"
    t.string "sponsor_link"
    t.string "sponsor_name"
    t.boolean "sponsored"
    t.datetime "updated_at", null: false
    t.string "youtube_url"
  end

  create_table "public.tips", force: :cascade do |t|
    t.string "category"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
