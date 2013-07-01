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

ActiveRecord::Schema.define(:version => 20130630062226) do

  create_table "choices", :force => true do |t|
    t.integer  "index"
    t.text     "body"
    t.boolean  "isAnswer"
    t.integer  "quiz_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "choices", ["quiz_id"], :name => "index_choices_on_quiz_id"

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.text     "intro"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exercises", :force => true do |t|
    t.text     "question"
    t.text     "answer"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "orderNum"
  end

  add_index "exercises", ["course_id"], :name => "index_exercises_on_course_id"

  create_table "quizzes", :force => true do |t|
    t.string   "title"
    t.text     "answer"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "orderNum"
  end

  add_index "quizzes", ["course_id"], :name => "index_quizzes_on_course_id"

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "robotName"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "videos", :force => true do |t|
    t.integer  "orderNum"
    t.string   "url"
    t.string   "img"
    t.string   "title"
    t.text     "description"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "videos", ["course_id"], :name => "index_videos_on_course_id"

end
