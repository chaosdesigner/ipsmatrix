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

ActiveRecord::Schema[7.0].define(version: 2023_03_01_202130) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "characters", force: :cascade do |t|
    t.bigint "feature_id", null: false
    t.bigint "feature_type_id", null: false
    t.string "description_en"
    t.string "description_cz"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "seq"
    t.index ["feature_id"], name: "index_characters_on_feature_id"
    t.index ["feature_type_id"], name: "index_characters_on_feature_type_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.string "name_en"
    t.string "name_cz"
    t.integer "seq"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authority"
  end

  create_table "feature_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "name_en"
    t.string "name_cz"
    t.integer "seq"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "sexes", force: :cascade do |t|
    t.string "description_en"
    t.string "description_cz"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "entity_id", null: false
    t.bigint "sex_id", null: false
    t.float "value_min"
    t.float "value_max"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_states_on_character_id"
    t.index ["entity_id"], name: "index_states_on_entity_id"
    t.index ["sex_id"], name: "index_states_on_sex_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "characters", "feature_types", on_delete: :cascade
  add_foreign_key "characters", "features", on_delete: :cascade
  add_foreign_key "states", "characters", on_delete: :cascade
  add_foreign_key "states", "entities", on_delete: :cascade
  add_foreign_key "states", "sexes", on_delete: :cascade
end
