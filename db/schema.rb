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

ActiveRecord::Schema.define(version: 2018_10_22_033203) do

  create_table "areas", force: :cascade do |t|
    t.string "arName", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blocks", force: :cascade do |t|
    t.string "bNum", limit: 4
    t.integer "quarter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quarter_id"], name: "index_blocks_on_quarter_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "facultyName", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "programName", limit: 20
    t.string "tipeP", limit: 20
    t.integer "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_programs_on_faculty_id"
  end

  create_table "quarters", force: :cascade do |t|
    t.string "qName", limit: 20
    t.string "address", limit: 40
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "block_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_id"], name: "index_rooms_on_block_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "studentName", limit: 20
    t.string "lastName", limit: 20
    t.integer "user_id"
    t.integer "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_students_on_program_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subName", limit: 20
    t.integer "area_id"
    t.integer "credits", limit: 2
    t.integer "program_id"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_subjects_on_area_id"
    t.index ["program_id"], name: "index_subjects_on_program_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "tName", limit: 20
    t.string "tLastname", limit: 20
    t.string "profesion", limit: 40
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
