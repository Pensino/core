# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120125185413) do

  create_table "classrooms", :force => true do |t|
    t.integer  "school_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantityLessons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", :force => true do |t|
    t.integer  "student_id"
    t.integer  "matter_id"
    t.integer  "timetable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grids", :force => true do |t|
    t.string   "name"
    t.boolean  "draft"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
    t.integer  "coordinator_id"
  end

  create_table "grids_matters", :force => true do |t|
    t.integer "grid_id"
    t.integer "matter_id"
  end

  create_table "matters", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantityLessons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.integer  "timetable_id"
    t.integer  "matter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "day_of_week"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "time_gap_id"
    t.integer  "professor_id"
  end

  add_index "schedules", ["matter_id"], :name => "index_schedules_on_matter_id"
  add_index "schedules", ["time_gap_id"], :name => "index_schedules_on_time_gap_id"
  add_index "schedules", ["timetable_id"], :name => "index_schedules_on_timetable_id"

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_gaps", :force => true do |t|
    t.string   "day_of_week"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "quantity_lessons"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "expedient_id"
  end

  create_table "timetables", :force => true do |t|
    t.integer  "grid_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "timetables", ["grid_id"], :name => "index_timetables_on_grid_id"

end
