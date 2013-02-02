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

ActiveRecord::Schema.define(:version => 20130202204637) do

  create_table "goals", :force => true do |t|
    t.integer  "distance"
    t.integer  "race_id"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "goals", ["race_id"], :name => "index_goals_on_race_id"

  create_table "races", :force => true do |t|
    t.string   "name"
    t.string   "short_description"
    t.text     "long_description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

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
    t.string   "localtion"
    t.datetime "oauth_expires_at"
  end

end
