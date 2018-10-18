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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_10_17_212424) do
=======
ActiveRecord::Schema.define(version: 2018_10_17_043009) do
>>>>>>> parent of cb2b8a4... otro

  create_table "areas", force: :cascade do |t|
    t.string "nameArea", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blocks", force: :cascade do |t|
    t.string "name", limit: 20
    t.integer "idQuarters", limit: 10
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
    t.integer "numeroDeCreditos", limit: 2
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

  create_table "notes", force: :cascade do |t|
    t.integer "idCourse", limit: 10
    t.integer "idStudent", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.integer "faculty_id"
    t.string "programName", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_programs_on_faculty_id"
  end

  create_table "quarters", force: :cascade do |t|
    t.string "address", limit: 40
    t.string "q_Name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.string "idStudent"
    t.decimal "value"
    t.date "f_generate"
    t.string "T_pay", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "idBlock", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name", limit: 20
    t.string "l_name", limit: 20
    t.integer "idUser", limit: 10
    t.integer "idProgram", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "sName", limit: 20
    t.integer "area_id"
    t.integer "credit_id"
    t.integer "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_subjects_on_area_id"
    t.index ["credit_id"], name: "index_subjects_on_credit_id"
    t.index ["program_id"], name: "index_subjects_on_program_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacherName", limit: 20
    t.string "profesion", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treasuries", force: :cascade do |t|
    t.string "name", limit: 20
    t.integer "idReceipt", limit: 10
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

  create_table "works", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
