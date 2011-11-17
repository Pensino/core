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

ActiveRecord::Schema.define(:version => 20111117022138) do

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantityLessons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_grids", :force => true do |t|
    t.integer "grid_id"
    t.integer "course_id"
  end

  create_table "grids", :force => true do |t|
    t.string   "name"
    t.boolean  "draft"
    t.datetime "created_at"
    t.datetime "updated_at"
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

end
