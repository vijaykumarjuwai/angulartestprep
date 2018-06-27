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

ActiveRecord::Schema.define(version: 20180627052551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "answer"
    t.boolean "correct"
    t.bigint "passage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["passage_id"], name: "index_answers_on_passage_id"
  end

  create_table "paragraphs", force: :cascade do |t|
    t.string "paragraph"
    t.bigint "passage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["passage_id"], name: "index_paragraphs_on_passage_id"
  end

  create_table "passages", force: :cascade do |t|
    t.string "name"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "header"
    t.string "introduction"
    t.index ["section_id"], name: "index_passages_on_section_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.bigint "passage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["passage_id"], name: "index_questions_on_passage_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "section"
    t.bigint "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_sections_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "category"
    t.string "name"
  end

  add_foreign_key "answers", "passages"
  add_foreign_key "paragraphs", "passages"
  add_foreign_key "passages", "sections"
  add_foreign_key "questions", "passages"
  add_foreign_key "sections", "tests"
end
