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

ActiveRecord::Schema.define(version: 2021_09_14_013232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quiz_questions", force: :cascade do |t|
    t.string "question", default: "", null: false
    t.boolean "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "quizzes_id"
    t.index ["quizzes_id"], name: "index_quiz_questions_on_quizzes_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_quizzes_on_users_id"
  end

  create_table "user_quiz_answers", force: :cascade do |t|
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "quiz_questions_id"
    t.bigint "users_id"
    t.index ["quiz_questions_id"], name: "index_user_quiz_answers_on_quiz_questions_id"
    t.index ["users_id"], name: "index_user_quiz_answers_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "quiz_questions", "quizzes", column: "quizzes_id"
  add_foreign_key "quizzes", "users", column: "users_id"
  add_foreign_key "user_quiz_answers", "quiz_questions", column: "quiz_questions_id"
  add_foreign_key "user_quiz_answers", "users", column: "users_id"
end