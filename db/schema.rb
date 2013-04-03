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

ActiveRecord::Schema.define(:version => 20130403021501) do

  create_table "goals", :force => true do |t|
    t.integer  "milestone"
    t.integer  "race_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "race_type_id"
    t.string   "name"
  end

  add_index "goals", ["race_id"], :name => "index_goals_on_race_id"
  add_index "goals", ["race_type_id"], :name => "index_goals_on_race_type_id"

  create_table "race_run_types", :force => true do |t|
    t.integer  "race_id"
    t.integer  "run_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "race_run_types", ["race_id"], :name => "index_race_run_types_on_race_id"
  add_index "race_run_types", ["run_type_id"], :name => "index_race_run_types_on_run_type_id"

  create_table "race_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.string   "short_description"
    t.text     "long_description"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "image_url"
    t.string   "youtube_id"
    t.text     "share_message_template"
  end

  create_table "run_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "runs", :force => true do |t|
    t.integer  "run_type_id"
    t.integer  "total_time"
    t.float    "average_speed"
    t.integer  "total_distance"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.integer  "race_id"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.float    "score"
    t.text     "share_message"
  end

  add_index "runs", ["race_id"], :name => "index_runs_on_race_id"
  add_index "runs", ["run_type_id"], :name => "index_runs_on_run_type_id"
  add_index "runs", ["user_id"], :name => "index_runs_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "birthday"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "gender"
    t.string   "location"
    t.datetime "oauth_expires_at"
  end

end
