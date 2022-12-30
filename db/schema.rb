# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_221_230_002_651) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'characters', force: :cascade do |t|
    t.bigint 'feature_id', null: false
    t.bigint 'feature_type_id', null: false
    t.string 'description_en'
    t.string 'description_cz'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['feature_id'], name: 'index_characters_on_feature_id'
    t.index ['feature_type_id'], name: 'index_characters_on_feature_type_id'
  end

  create_table 'entities', force: :cascade do |t|
    t.string 'name'
    t.string 'name_en'
    t.string 'name_cz'
    t.integer 'order'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'authority'
  end

  create_table 'feature_types', force: :cascade do |t|
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'features', force: :cascade do |t|
    t.string 'name_en'
    t.string 'name_cz'
    t.integer 'order'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'sexes', force: :cascade do |t|
    t.string 'description_en'
    t.string 'description_cz'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'states', force: :cascade do |t|
    t.bigint 'character_id', null: false
    t.bigint 'entity_id', null: false
    t.bigint 'sex_id', null: false
    t.float 'value_min'
    t.float 'value_max'
    t.string 'image'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['character_id'], name: 'index_states_on_character_id'
    t.index ['entity_id'], name: 'index_states_on_entity_id'
    t.index ['sex_id'], name: 'index_states_on_sex_id'
  end

  add_foreign_key 'characters', 'feature_types', on_delete: :cascade
  add_foreign_key 'characters', 'features', on_delete: :cascade
  add_foreign_key 'states', 'characters', on_delete: :cascade
  add_foreign_key 'states', 'entities', on_delete: :cascade
  add_foreign_key 'states', 'sexes', on_delete: :cascade
end
