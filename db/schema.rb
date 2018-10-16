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

ActiveRecord::Schema.define(version: 2018_10_16_203843) do

  create_table "areas", force: :cascade do |t|
    t.string "nameArea", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "location", limit: 20
    t.time "hour"
    t.integer "idTeacher", limit: 10
    t.string "courseName", limit: 20
    t.integer "code", limit: 10
    t.integer "idMatter", limit: 10
    t.integer "studentNumber", limit: 2
    t.integer "idRoom", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credits", force: :cascade do |t|
    t.integer "creditNumber", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string "facultyName", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "helpers", force: :cascade do |t|
    t.integer "idStudent", limit: 10
    t.integer "idSubject", limit: 10
    t.integer "period", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pensuls", force: :cascade do |t|
    t.integer "idProgram", limit: 10
    t.integer "idStudent", limit: 10
    t.string "pensulName", limit: 20
    t.integer "idsubject", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.integer "idFaculty", limit: 10
    t.string "ProgramName", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name", limit: 20
    t.string "l_name", limit: 20
    t.integer "code", limit: 10
    t.string "email", limit: 40
    t.integer "idProgram", limit: 10
    t.string "password", limit: 40
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subjectName", limit: 20
    t.integer "idArea", limit: 10
    t.integer "idCredit", limit: 10
    t.integer "idPensul", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name", limit: 20
    t.string "proffesion", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
